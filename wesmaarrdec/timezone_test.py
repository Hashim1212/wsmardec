from datetime import datetime
import pytz

# Define timezones
ny_tz = pytz.timezone('America/New_York')
london_tz = pytz.timezone('Europe/London')

# Get current time in New York
ny_time = datetime.now(ny_tz)
print(f"Current time in New York: {ny_time}")

# Convert New York time to London time
london_time = ny_time.astimezone(london_tz)
print(f"Equivalent time in London: {london_time}")

