# your_app/management/commands/test_command.py
from django.core.management.base import BaseCommand

class Command(BaseCommand):
    help = 'A test command'

    def handle(self, *args, **options):
        self.stdout.write(self.style.SUCCESS('Test command executed successfully.'))
