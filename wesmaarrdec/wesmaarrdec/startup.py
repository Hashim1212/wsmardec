# startup.py
from django.db import connection

def set_strict_mode():
    with connection.cursor() as cursor:
        cursor.execute("SET SESSION sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES'")

