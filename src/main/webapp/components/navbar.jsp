<style>
   * {
       margin: 0;
       padding: 0;
       box-sizing: border-box;
       font-family: Arial, sans-serif;
       font-weight: bold;
   }
   
   /* Navbar Styling */
   .navbar {
       display: flex;
       justify-content: flex-end;
       background-color: #0A0A0A; /* Matte black background */
       padding: 15px 30px;
       box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4); /* Slightly darker shadow for depth */
   }
   
   /* Navbar Links */
   .navbar a {
       color: #00FF84; /* Neon green text */
       text-decoration: none;
       font-size: 16px;
       margin-left: 20px;
       padding: 10px 20px;
       border-radius: 5px;
       transition: background-color 0.3s ease, color 0.3s ease;
   }
   
   .navbar a:hover {
       background-color: #00FF84; /* Neon green background on hover */
       color: #0A0A0A; /* Matte black text on hover */
   }
</style>

<div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
    </div>
    