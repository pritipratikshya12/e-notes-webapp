<style>
.search-container {
    margin: 20px 0;
}

.search-input {
    padding: 10px;
    width: 300px;
    border: 1px solid #00FF84; /* Neon green border */
    border-radius: 5px;
    font-size: 1em;
    background-color: #1A1A1A; /* Dark gray background */
    color: #D0D0D0; /* Light gray text */
    transition: border-color 0.3s ease;
}

.search-input:focus {
    border-color: #FF007F; /* Hot pink on focus */
    outline: none;
}

.search-btn {
    padding: 10px;
    background-color: #00FF84; /* Neon green button */
    color: #0A0A0A; /* Matte black text */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;
    transition: background-color 0.3s ease;
    font-weight: bold;
}

.search-btn:hover {
    background-color: #FF007F; /* Hot pink on hover */
}
</style>

<div class="search-container">
            <form action="searchNotes" method="get">
                <input type="text" name="search" placeholder="Search notes by title" class="search-input" required>
                <button type="submit" class="search-btn">Search</button>
            </form>
        </div>