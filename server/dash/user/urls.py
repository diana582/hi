# from django.contrib import admin
# from django.urls import path, include
# from . import views
# from .views import loginApi
# from .views import login_view
# from .views import ClassroomListCreateAPIView

# urlpatterns = [
#     path('signin/', loginApi.as_view(), name='login'),
#      path('classrooms/', ClassroomListCreateAPIView.as_view(), name='classroom-list-create'),
# ]
from django.urls import include, path
from rest_framework import routers
from .views import  ClassroomViewSet
from .views import LoginAPIView
from .views import  SubjectSet
from .views import StudentSet
from .views import TimeTableSet


# router = routers.DefaultRouter()
# router.register(r'classrooms', ClassroomViewSet)

urlpatterns = [
    # path('api/', include(router.urls)),
    path('signin/', ClassroomViewSet.as_view(),name='reg'),
    path('signin2/', SubjectSet.as_view(),name='sub'),
    path('login/', LoginAPIView.as_view(),name='login'),
    path('student/',StudentSet.as_view(),name='student'),
    path('timetable/',TimeTableSet.as_view(),name='timetable'),


]
