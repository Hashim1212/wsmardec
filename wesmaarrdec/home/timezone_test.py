from django.utils import timezone
from datetime import date, timedelta
import pytz

from .models import (
    User, Attainment, Memorandum, SpecialOrder, CommLetter, Moau, MoauParties, MoauSignatories, Event, EventAgencies
)
from .forms import UserPForm, UserIForm, MoauForm, EventForm, MemoForm, LetterForm, OrderForm
from .filters import MoauFilter, EventFilter, MemoFilter, LetterFilter, OrderFilter

def timezone_view(request):
    # Define the Philippines time zone
    philippines_tz = pytz.timezone('Asia/Manila')

    # Get the current time in UTC
    now_utc = timezone.now()

    # Convert the current time to the Philippines time zone
    now_philippines_tz = now_utc.astimezone(philippines_tz)

    # Format the time as a string for display


    # Pass the formatted time to the template
    context = {
        'current_time': formatted_time,
        'timezone': 'Asia/Manila'
    }

    return render(request, 'home/home.html', context)
