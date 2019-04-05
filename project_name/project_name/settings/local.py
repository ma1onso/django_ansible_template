from .base import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'user',
        'USER': 'django',
        'PASSWORD': 'django',
        'HOST': '127.0.0.1',
        'PORT': '5432',
    }
}
