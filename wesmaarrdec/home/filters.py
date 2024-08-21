import django_filters
from .models import *

class MoauFilter(django_filters.FilterSet):
    created_at = django_filters.CharFilter(lookup_expr='icontains', label="Year")

    class Meta:
        model = Moau
        fields = {'created_at',
        }


class EventFilter(django_filters.FilterSet):
    created_at = django_filters.CharFilter(lookup_expr='icontains', label="Year")

    class Meta:
        model = Event
        fields = {'created_at',
        }


class MemoFilter(django_filters.FilterSet):
    created_at = django_filters.CharFilter(lookup_expr='icontains', label="Year")

    class Meta:
        model = Memorandum
        fields = {'created_at',
        }


class LetterFilter(django_filters.FilterSet):
    created_at = django_filters.CharFilter(lookup_expr='icontains', label="Year")

    class Meta:
        model = CommLetter
        fields = {'created_at',
        }


class OrderFilter(django_filters.FilterSet):
    created_at = django_filters.CharFilter(lookup_expr='icontains', label="Year")

    class Meta:
        model = SpecialOrder
        fields = {'created_at',
        }