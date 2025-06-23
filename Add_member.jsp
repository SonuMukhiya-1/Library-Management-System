<!DOCTYPE html>
<html lang="hi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Library User Registration</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background: none;
      font-family: 'Segoe UI', Tahoma, sans-serif;
    }

    .container {
      background: #fff;
      padding: 2rem;
      border-radius: 12px;
      width: 100%;
      max-width: 800px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.2);
      transition: transform 0.3s ease;
    }

    .container:hover {
      transform: translateY(-5px);
    }

    h2 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: #333;
    }

    label {
      display: block;
      margin-bottom: 0.75rem;
      color: #555;
      font-size: 0.95rem;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"],
    input[type="email"],
    input[type="tel"],
    input[type="file"],
    input[type="password"],
    select {
      width: 100%;
      padding: 0.65rem;
      margin-top: 0.25rem;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 0.95rem;
      transition: border-color 0.2s;
    }

    input:focus {
      border-color: #5563DE;
      outline: none;
      box-shadow: 0 0 0 2px rgba(85,99,222,0.2);
    }

    .divbox {
      margin-bottom: 1rem;
    }

    .divbox.divboxfile input {
      padding: 0.3rem;
    }

    .btn-submit {
      width: 100%;
      padding: 0.75rem;
      background: #5563DE;
      color: #fff;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      cursor: pointer;
      margin-top: 0.5rem;
      transition: background 0.3s;
    }

    .btn-submit:hover {
      background: #3e4cb5;
    }

    .checkbox {
      display: flex;
      align-items: center;
      margin-top: 0.5rem;
    }

    .checkbox input {
      margin-right: 0.5rem;
    }

    .image-preview {
      margin-top: 1rem;
      text-align: center;
    }

    .image-preview img {
      max-width: 100%;
      max-height: 150px;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>
    
     <%@page import="java.sql.*;" %>
        <%
             String user_id="";
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_management","root","sonu9162");

             String query="select * from user_table";
             Statement smt = con.createStatement();
             ResultSet rs = smt.executeQuery(query);

           if(rs.next())
           {
                user_id=rs.getString(1);
                session.setAttribute("m_id",user_id);               
                
            } 
    %>
   

  <form class="container" action="Add_member_verify.jsp" method="POST" enctype="multipart/form-data">
    <h2>Library Registration</h2>

    <div class="divbox">
      <label for="member_id">Member ID *</label>
      <input type="text" id="member_id" name="member_id" value="<%="library_"+user_id %>" readonly="readonly" >
    </div>

     <div class="divbox">
      <label for="first_name">First Name *</label>
      <input type="text" id="first_name" name="first_name" required>
    </div>


    <div class="divbox">
      <label for="father_name">Father's Name *</label>
      <input type="text" id="father_name" name="father_name" required>
    </div>

   
    <div class="divbox">
      <label for="dob">Date of Birth *</label>
      <input type="date" id="dob" name="dob" required>
    </div>

    <div class="divbox">
      <label for="email">Email *</label>
      <input type="email" id="email" name="email" required>
    </div>

    <div class="divbox">
      <label for="mobile">Mobile Number *</label>
      <input type="number" id="mobile" name="mobile"  required>
    </div>

    <div class="divbox">
      <label for="address">Address *</label>
       <input type="text" id="address" name="address" required>
    </div>

    <div class="divbox">
      <label for="membership_type">Membership Type *</label>
      <select id="membership_type" name="membership_type" required>
        <option value="">--Select--</option>
        <option value="student" >Student</option>
        <option value="teacher" >Teacher</option>
        <option value="Other" >Other</option>
      </select>
    </div>

     <div class="divboxfile">
      <label for="photo_upload">Profile Photo *</label>
      <input type="file" id="photo_upload" name="photo_upload" onchange="previewImage(event)" required>
    </div>

    <div class="image-preview" id="image_preview" style="display: none;">
      <h3>Uploaded Photo Preview:</h3>
      <img id="preview_img" src="" alt="Your Photo">
    </div>

    <div class="divbox">
      <label for="password">Create Password *</label>
      <input type="password" id="password" name="password"  required>
    </div>

    <div class="checkbox">
      <input type="checkbox" id="terms" name="terms" required>
      <label for="terms">I agree to the Terms & Conditions *</label>
    </div>  

    <button type="submit" class="btn-submit">Submit Registration</button>
  </form>

  <script>
      
    function previewImage(event) {
      const file = event.target.files[0];
      const reader = new FileReader();
      reader.onload = function() {
        const preview = document.getElementById('image_preview');
        const img = document.getElementById('preview_img');
        img.src = reader.result;
        preview.style.display = 'block';
      };
      reader.readAsDataURL(file);
    }
  </script>

</body>
</html>
