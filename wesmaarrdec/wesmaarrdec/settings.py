from pathlib import Path
# IMPORT OS
import os


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-t737*mm338n0*+b@^n0g!02=x5dwujccg+_9e=&j65*4z6f7c9'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['wsmrdec.pythonanywhere.com']


# Application definition


INSTALLED_APPS = [
'jazzmin',

    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    # created app
    'home.apps.HomeConfig',
    'django_filters',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'wesmaarrdec.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            # setting up templates
            os.path.join(BASE_DIR, 'templates')

        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'wesmaarrdec.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

# DATABASES = {
#    'default': {
#        'ENGINE': 'django.db.backends.sqlite3',
#        'NAME': BASE_DIR / 'db.sqlite3',
#    }
# }

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'wsmrdec$archiving',
        'HOST': 'wsmrdec.mysql.pythonanywhere-services.com',
        'PORT': '3306',
        'USER': 'wsmrdec',
        'PASSWORD': 'Hashim112901',
        'OPTIONS':{
                'init_command': "SET sql_mode='STRICT_TRANS_TABLES'"
            }
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]
AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',  # Default backend
]

# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Manila'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/
LOGOUT_REDIRECT_URL = 'login'
LOGIN_URL = 'login'
# SERVE STATIC FILES
STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
STATICFILES_DIRS = [os.path.join(BASE_DIR, 'staticfiles')]

# WHERE TO UPLOAD THE FILES
MEDIA_ROOT = os.path.join(BASE_DIR, 'static/files')

# URL for files
MEDIA_URL = '/files/'

# Change USER Model
AUTH_USER_MODEL = 'home.User'
SESSION_ENGINE = 'django.contrib.sessions.backends.db'  # Store sessions in the database
SESSION_COOKIE_AGE = 3600  # Set session timeout to 1 hour, adjust as needed
# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

JAZZMIN_SETTINGS = {
    # title of the window (Will default to current_admin_site.site_title if absent or None)
    "site_title": "WESMAARRDEC ADMIN",

    # Title on the login screen (19 chars max) (defaults to current_admin_site.site_header if absent or None)
    "site_header": "ADMIN",

    # Title on the brand (19 chars max) (defaults to current_admin_site.site_header if absent or None)
    "site_brand": "ADMIN",

    # Logo to use for your site, must be present in static files, used for brand on top left
    "site_logo": "/static/images/WESMAARRDEC.png",

    # Logo to use for your site, must be present in static files, used for login form logo (defaults to site_logo)
    "login_logo": None,

    # Logo to use for login form in dark themes (defaults to login_logo)
    "login_logo_dark": None,

    # CSS classes that are applied to the logo above
    "site_logo_classes": "img-circle",

    # Relative path to a favicon for your site, will default to site_logo if absent (ideally 32x32 px)
    "site_icon": None,

    # Welcome text on the login screen
    "welcome_sign": "WESMAARRDEC ADMIN",

    # Copyright on the footer
    "copyright": "",

    # List of model admins to search from the search bar, search bar omitted if excluded
    # If you want to use a single search field you dont need to use a list, you can use a simple string
    "search_model": ["auth.User", "auth.Group"],

    # Field name on user model that contains avatar ImageField/URLField/Charfield or a callable that receives the user
    "user_avatar": None,


}
