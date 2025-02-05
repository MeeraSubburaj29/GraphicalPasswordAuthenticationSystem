<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.security.*,javax.crypto.*,javax.crypto.spec.SecretKeySpec,sun.misc.*"%>
<%@page import="java.io.*"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!         
            ResultSet rs;
            InputStream in;
            ByteArrayOutputStream bout;
            FileOutputStream fout;
            byte[] buffer;
            String contentType, content;
            int c;
            String fileId, owner, subject, fileName, fileCategory, uploadedDate, fileKey;
            String sharing_status;
            float price;

            public String getParameterValue(String content, String paramName) {
                String paramValue = "";
                int startIndex = content.indexOf(paramName) + paramName.length() + 3;
                int endIndex = content.indexOf("--", startIndex);
                paramValue = content.substring(startIndex, endIndex).trim();
                return paramValue;
            }
            private static final String ALGO = "AES";
            private static final byte[] keyValue =
                    new byte[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p'};

            public static String encrypt(String Data) throws Exception {
                Key key = generateKey();
                Cipher c = Cipher.getInstance(ALGO);
                c.init(Cipher.ENCRYPT_MODE, key);
                byte[] encVal = c.doFinal(Data.getBytes());
                String encryptedValue = new BASE64Encoder().encode(encVal);
                return encryptedValue;
            }

            public static String decrypt(String encryptedData) throws Exception {
                Key key = generateKey();
                Cipher c = Cipher.getInstance(ALGO);
                c.init(Cipher.DECRYPT_MODE, key);
                byte[] decodedValue = new BASE64Decoder().decodeBuffer(encryptedData);
                byte[] decValue = c.doFinal(decodedValue);
                String decryptedValue = new String(decValue);
                return decryptedValue;
            }

            private static Key generateKey() throws Exception {
                Key key = new SecretKeySpec(keyValue, ALGO);
                return key;
            }

            public String generateSecretKey() {
                SecureRandom r = new SecureRandom();
                String s1 = "";
                int n = r.nextInt();
                s1 = Integer.toHexString(n);
                return s1;
            }

            public String generateEncryptedSecretKey(String key) throws Exception {
                return encrypt(key);
            }
        %>

        <%
            owner=session.getAttribute("UserId").toString();
            
            contentType = request.getContentType();
            in = request.getInputStream();
            bout = new ByteArrayOutputStream();

            while ((c = in.read()) != -1)
            {
                bout.write(c);
            }
            buffer = bout.toByteArray();
            content = new String(buffer);
            bout.close();


            // Start of Code for getting the uploaded file name            
            String saveFile = content.substring(content.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));            
            fileName = saveFile;     //this is uploaded file name       
            // End of Code for getting the uploaded file name

            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;
            
            // Start of Code for extracting the index of content
            pos = content.indexOf("filename=\"");
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;

            int boundaryLocation = content.indexOf(boundary, pos) - 4;
            int startPos = pos;
            int endPos = boundaryLocation;
            //End of Code for extracting the index of content

            
            // Code for creating a new file with the same name and writing the content in new file
            
            File f1=new File(application.getRealPath(""),owner);
            if(!f1.exists())
                f1.mkdir();
            
            fout = new FileOutputStream(f1.getPath() + "\\" + fileName);
            fout.write(buffer, startPos, endPos - startPos);
            fout.flush();
            fout.close();

            //Start of Code for getting parameter values requested by client
            fileId=getParameterValue(content, "fileid");   
            uploadedDate=getParameterValue(content, "uploaddate");
            fileKey=getParameterValue(content, "filekey");
            
            //End of Code for getting parameter values requested by client
            
            ps=con.prepareStatement("insert into UploadFiles values(?,?,?,?,?)");
            ps.setString(1, fileId);
            ps.setString(2, fileName);
            ps.setString(3, fileKey);
            ps.setString(4, uploadedDate);
            ps.setString(5, owner);
            ps.executeUpdate();
            ps.close();
            response.sendRedirect("FileUpload.jsp?msg=File is Uploaded into the Server!!");
            //out.println("<script>alert('File Sent to the User!!');</script>");
            
        %>
    </body>
</html>