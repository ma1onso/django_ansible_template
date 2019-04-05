from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import Group

from .models import CustomUser


class CustomUserAdmin(BaseUserAdmin):

    list_display = ('email', 'is_staff')
    list_filter = ('is_staff',)
    search_fields = ('email', )
    ordering = ('email',)
    fieldsets = ()
    add_fieldsets = ()
    filter_horizontal = ()


admin.site.register(CustomUser, CustomUserAdmin)
admin.site.unregister(Group)
