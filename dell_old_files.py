import os.path, time, os 
# импортируем эти модули, чтобы была возможность использовать нижеприведенные методы

current_time = time.time()

mydir = '/tmp/temp/' # Введите свою директорию.

myfiles = os.listdir(mydir)
for myfile in myfiles:

    if (current_time - os.path.getctime(mydir+myfile))//60 > 5:

        print(myfile+' was deleted. He is older then 5 minutes.')
        os.remove(mydir+myfile)
    else:
        print('its a new files:'+myfile+' '+time.ctime(os.path.getctime(mydir+myfile)))
