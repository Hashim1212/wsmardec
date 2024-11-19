# Generated by Django 4.2.1 on 2024-11-02 13:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("home", "0005_alter_user_groups_alter_user_user_permissions"),
    ]

    operations = [
        migrations.AddField(
            model_name="memorandum",
            name="address",
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name="memorandum",
            name="referred_to_as",
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AddField(
            model_name="memorandum",
            name="represented_by",
            field=models.CharField(max_length=255, null=True),
        ),
    ]