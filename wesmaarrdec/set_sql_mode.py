# set_sql_mode.py

import django
import os
import sys

# Set the DJANGO_SETTINGS_MODULE environment variable
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "wesmaarrdec.settings")
django.setup()

from django.db import connection

def set_sql_mode():
    with connection.cursor() as cursor:
        cursor.execute("SET SESSION sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES'")

# Execute the function to set the SQL mode
set_sql_mode()
print("Successfully set MySQL Strict Mode")

