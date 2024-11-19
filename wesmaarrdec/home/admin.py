from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from django.utils.translation import gettext_lazy as _
from django.contrib import messages

# Register your models here.
from .models import User, Attainment, Memorandum, SpecialOrder, CommLetter, Moau, MoauParties, MoauSignatories, Event, EventAgencies

admin.site.register(User)
admin.site.register(Attainment)
admin.site.register(Memorandum)
admin.site.register(SpecialOrder)
admin.site.register(CommLetter)
admin.site.register(Moau)
admin.site.register(MoauParties)
admin.site.register(MoauSignatories)
admin.site.register(Event)
admin.site.register(EventAgencies)

def reset_user_password(modeladmin, request, queryset):
    # Iterate over selected users and reset their password
    for user in queryset:
        new_password = 'defaultpassword123'  # Define the new password here
        user.set_password(new_password)
        user.save()
        # Show success message for each user updated
        modeladmin.message_user(request, f"Password for {user.username} has been reset.", level=messages.SUCCESS)

reset_user_password.short_description = _("Reset password to a default value")

# Register the action with UserAdmin
class CustomUserAdmin(UserAdmin):
    actions = [reset_user_password]  # Add our custom action to the list of available actions

# Register the modified UserAdmin
admin.site.unregister(User)  # Unregister the default UserAdmin
admin.site.register(User, CustomUserAdmin)