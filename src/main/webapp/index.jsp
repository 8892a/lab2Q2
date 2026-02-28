<html>
    <body>
        <h1>Welcome to COMP367 Kendra Matthews!</h1>
        <h1 id="greeting"></h1>

        <script>
            const hour = new Date().getHours();
            const greeting = (hour < 12) ? "Good Morning!" : "Good Afternoon!";
            document.getElementById("greeting").innerText = greeting;
        </script>
    </body>
</html>
