##### INSE7B-Code
### Files
- `server.js` - starts server on port 8080
- `database.sql` – creates the database
- `Testing.py` - Python file for testing the system (uses helium API)
- `package.json` - Contains JSON for our server
- `package-lock.json` - Contains all the packages for our server to run

### Folders
- `node_modules` - Contains all the neccessary node modules for our server
- `webpages` - Contains all the webpages for our server

### Usernames
- 'JoshDaviess' - Joshua Davies
- 'GaryL98' - Gary Leung
- 'SalehNawar' - Saleh Nawar
- 'Emeka815208' - Emeka Nwaenie
- 'MarkStrudwick1' - Mark Strudwick
- 'FlorinGhitun' - Flroin Ghitun
- 'RidwanAbiolaTw' - Ridwan Towobola

### Run Instructions
If using your VM:
1. Go to your VM's terminal
2. Input the following code:
```
git clone https://github.com/JoshDaviess/INSE7B-Code/
cd INSE7B-Code
mysql -u root -p < database.sql
```
Then enter the password for your database. This command is needed to create the database on your DBMS. 
after the database has been created on your VM, you can now reload the terminal and enter the following code:
```
cd INSE7B-Code
node server
``` 
this will run the server on your VM. You can now access the website via the VM IP address.

### Instructions for running tests
The tests are made with the Helium API. Ensure your python environment can access this API.
Just run `Testing.py` as a script, and then run main().
You will be prompted to enter the IP address for the website. enter this in normally. If hosting on your own PC, you can just enter localhost.
