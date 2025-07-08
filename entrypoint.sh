#!/bin/sh
set -e

echo "Running migrations..."
python manage.py migrate

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Starting server..."
# exec gunicorn molkky_score.wsgi:application --bind 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000