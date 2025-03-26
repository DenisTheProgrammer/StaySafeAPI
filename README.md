# StaySafeAPI setup to work with StaySafe Application

### This fork of the "The Mad Project" API will be the custom API back end for our version of Stay Safe and is required for the application to run as it was intended

1. Install [Node JS](https://nodejs.org/en/download) on your computer or laptop.
2. Clone (or download a zip file of) the API from the [repository](https://github.com/DenisTheProgrammer/StaySafeAPI.git) to an external site.
3. Install the [XAMPP stack](https://www.apachefriends.org/download.html). 
4. Use the [phpMyAdmin](http://localhost/phpmyadmin/) tool to import the provided database. The latest version, staysafev1db.sqlLinks to an external site., is stored in the projects/staysafev1 folder of the above repository.
5. Modify the database configuration object in dbConfig.js file stored in the projects/staysafev1 folder **IF** you renamed the database or set a password.
6. Open the TheMadProject folder with VS Code, and type “npm install” and “npm start” in a new terminal to run the API.
7. In a browser, review the staysafe API endpoints below by visiting the URL [http://localhost:5001/staysafe/v1/api/](http://localhost:5001/staysafe/v1/api/)
8. Watch out for future updates of the repository
9. Clone the [StaySafe Application](https://github.com/DenisTheProgrammer/StaySafe.git) and run it.
10. Enjoy the application :)
