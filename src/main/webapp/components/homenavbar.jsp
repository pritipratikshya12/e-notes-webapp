<style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
    font-weight: bold;
}

.navbar {
    background-color: #0A0A0A; /* Matte Black */
    color: #D0D0D0; /* Light Gray */
    padding: 1rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar .logo {
    font-size: 1.8rem;
    font-weight: bold;
    color: #00FF84; /* Neon Green for logo */
}

.navbar nav {
    display: flex;
    gap: 1.5rem;
}

.navbar nav a {
    color: #00FF84; /* Neon Green for links */
    text-decoration: none;
    font-size: 16px;
    margin-left: 20px;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.navbar nav a:hover {
    background-color: #FF007F; /* Hot Pink background on hover */
    color: #0A0A0A; /* Matte Black text on hover */
    transition: background-color 0.3s, color 0.3s;
}
</style>

<header class="navbar">
    <h1 class="logo">E-Notes</h1>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="logout">Logout</a>
        <a href="updateProfile.jsp">Profile</a>
    </nav>
</header>
