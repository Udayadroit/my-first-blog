pip install virtualenv
virtualenv pythonenv
source pythonenv/bin/activate

cd portal
pip install -r requirements.txt
cd ..

django-admin startproject portal

python manage.py migrate

python3 manage.py runserver ##to run the server

python3 manage.py startapp blog

##do some changes in blog/models.py, all the models that we want to add

python3 manage.py makemirations feedback

##to add the model to our database
python3 manage.py migrate feedback

##to access from admin, open feedback/admin.py and paste some imports
