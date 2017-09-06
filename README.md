# google-drive-reset-share

A simple shell script for google drive files sharing option reset.

If you want to remove anyone who can access your files, you can :

 1. Select all files and folders in web GUI and change the sharing option by right click
 2. Revoke the sharing option of file using CLI one by one
 
But how about 1000 files + in your google drive?

# How to use #
##### Install gdrive
Please install CLI for google drive first - [gdrive](https://github.com/prasmussen/gdrive) 

##### Authentication
Run gdrive with a parameter to get the Google authentication code and then copy that to a browser windows. Paste back the verification code.

##### Run the script and wait for it
```sh
$ sh reset_gdrive_share.sh
```

# Dependencies
A google drive CLI tool - [gdrive](https://github.com/prasmussen/gdrive) is only dependence used in this project

# License
MIT
