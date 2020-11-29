python manage.py test
export TESTDUDE=False
sleep 3
python manage.py migrate --no-input
python manage.py runserver 0.0.0.0:8420
