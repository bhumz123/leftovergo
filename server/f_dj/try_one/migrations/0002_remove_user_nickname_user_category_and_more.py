# Generated by Django 4.2 on 2023-04-04 12:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('try_one', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='nickname',
        ),
        migrations.AddField(
            model_name='user',
            name='Category',
            field=models.CharField(default='Restaurant', max_length=50),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='user',
            name='first_name',
            field=models.CharField(),
        ),
        migrations.AlterField(
            model_name='user',
            name='last_name',
            field=models.CharField(max_length=50),
        ),
    ]
