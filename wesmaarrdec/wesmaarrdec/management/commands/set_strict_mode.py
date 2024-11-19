# your_app/management/commands/set_strict_mode.py
from django.core.management.base import BaseCommand
from django.db import connection

class Command(BaseCommand):
    help = 'Sets MySQL strict mode for the session'

    def handle(self, *args, **options):
        with connection.cursor() as cursor:
            cursor.execute("SET SESSION sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES'")
        self.stdout.write(self.style.SUCCESS('Successfully set MySQL strict mode.'))
