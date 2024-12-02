:: Initialize anaconda
call conda init
:: Activate the virtual environment that has the Mkdocs library
call conda activate pubWebDev
:: Go to the correct folder to run the webserver from
cd /d P:\3XAY\3xay.github.io\siteMdFiles
:: Start the webserver
python -m mkdocs serve
:: Prevents the console from automatically closing
cmd /k