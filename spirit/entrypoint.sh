export DJANGO_ENV=test
python manage.py test
export DJANGO_ENV=docker
sleep 3
python manage.py migrate --no-input
python manage.py runserver 0.0.0.0:8420
