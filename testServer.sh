#This is the linux version of the testServer.bat file, only tested on Arch
cd ~/Prog/3xay.github.io/siteMdFiles #Go to the working directory
source venv/bin/activate #Activate the virtual environment
mkdocs serve --dirtyreload #Start the mkdocs server