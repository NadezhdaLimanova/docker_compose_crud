python3 manage.py collectstatic --no-input
python3 manage.py migrate
gunicorn stocks_products.wsgi --bind 0.0.0.0:8000
