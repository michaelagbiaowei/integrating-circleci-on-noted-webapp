"""The project settings for test runs development."""

from .base import *


TEST_MODE = True

ALLOWED_HOSTS += ["127.0.0.1", "localhost", "https://8000-${GITPOD_WORKSPACE_ID}.${GITPOD_WORKSPACE_CLUSTER_HOST}"]

INTERNAL_IPS = ["127.0.0.1"]

CACHES = {
    "default": {
        "BACKEND": "common.cache.RedisDummyCache",
    }
}

EMAIL_BACKEND = "django.core.mail.backends.dummy.EmailBackend"
