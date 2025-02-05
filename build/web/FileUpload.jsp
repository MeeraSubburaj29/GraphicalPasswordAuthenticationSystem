<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.security.*,javax.crypto.*,javax.crypto.spec.SecretKeySpec,sun.misc.*"%>
<%@include file="db.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Graphical Password Authentication System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
          <h2 align="center" style="font-size: xx-large;">            
                GRAPHICAL PASSWORD AUTHENTICATION SYSTEM
        </h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
            <li class="active"><a href="ViewProfile.jsp">View Profile</a></li>
            <li><a href="FileUpload.jsp">File Upload</a></li>
            <li><a href="FileDownload.jsp">File Download</a></li>
            <li class="last"><a href="logout.jsp">Logout</a></li>
            <li style="color:blue;font-style: italic;font-size: 18px;font-weight: bold;">Welcome ${sessionScope.UserId}</li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="header_img"> 
          <img src="images/applicant1.jpg" alt="" width="395" height="180" />
          <img src="images/applicant2.jpg" alt="" width="395" height="180" />
          <img src="images/applicant_new.jpg" alt="" width="395" height="180" />
      </div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Secure Portal</span></h2>
          <div class="clr"></div>
          <img src="images/applicant_header.jpg" width="385" height="205" alt="" />
          
          <%! 
                            String now;
                            ResultSet rs;
                            String secretKey, encSecretKey;
                            int fileid;
                            private static final String ALGO = "AES";
                            private static final byte[] keyValue = new byte[]{'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p'};

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
                                byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
                                byte[] decValue = c.doFinal(decordedValue);
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
                            now = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
                            secretKey = generateSecretKey();
                            encSecretKey = generateEncryptedSecretKey(secretKey);


                            ps = con.prepareStatement("select ifnull(max(fileid),0)+1 from UploadFiles");
                            rs = ps.executeQuery();
                            if (rs.next()) {
                                fileid = rs.getInt(1);
                            }
                            rs.close();
                            ps.close();
                        %>
                        <center>
                            <form name="form1" action="FileUploadProcess.jsp" method="post" enctype="multipart/form-data">
                                <table width="50%" cellspacing="15" cellpadding="5" align="center">
                                    <tr>
                                        <th colspan="2" style="font-size: x-large;">File Uploading Form</th>
                                    </tr>
                                    <tr>
                                        <td>File Id</td>
                                        <td><input type="text" name="fileid" value="<%=fileid%>" required readonly /></td>
                                    </tr>                        
                                    <tr>
                                        <td>File to Upload</td>
                                        <td><input type="file" name="uploadfilename" required /></td>
                                    </tr>
                                    <tr>
                                        <td>File Key</td>
                                        <td><input type="text" name="filekey" value="<%=secretKey%>" required readonly/></td>
                                    </tr>
                                    <tr>
                                        <td>Uploaded Date</td>
                                        <td><input type="text" name="uploaddate" value="<%=now%>" required readonly/></td>
                                    </tr>
                                    <tr>
                                        <td>File Owner id</td>
                                        <td><input type="text" name="ownerid" value="${sessionScope.UserId}" required readonly/></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <input type="submit" value="Upload File" name="s1" />
                                            <input type="reset" value="Clear" name="s2" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><h3 style="color: blue;">${param.msg}</h3></td>
                                    </tr>
                                </table>
                            </form>
                        </center>
          <br/><br/><br/>
        </div>     
      </div>      
    </div>
  </div>
  <div class="fbg">    
    <div class="footer">
      <p class="lf">&copy; Copyright <a href="#">Graphical Password Authentication Portal Team</a>.</p>
      <p class="rf">Developed By<a href="http://www.freewebsitetemplatez.com/">&nbsp;AMS</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>
</body>
</html>