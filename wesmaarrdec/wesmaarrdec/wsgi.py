import os
from django.core.wsgi import get_wsgi_application
from django.db import connection

# Function to set MySQL Strict Mode
def set_strict_mode():
    with connection.cursor() as cursor:
        cursor.execute("SET SESSION sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES'")

# Set Strict Mode when WSGI app is loaded
set_strict_mode()

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'wesmaarrdec.settings')
application = get_wsgi_application()
