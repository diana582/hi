
from rest_framework import viewsets
from .models import Classroom
from .models import SubjectDetails
from .models import StudentDetails
from .models import TimeTable
from rest_framework import status
from .serializers import loginSerializer
from rest_framework.views import APIView
from rest_framework.response import Response

class ClassroomViewSet(APIView):
    def post(self,request):
        name=request.data.get('name')
        block=request.data.get('block')
        rows=request.data.get('rows')
        columns=request.data.get('columns')

        classdetails=Classroom(
            name=name,
            block=block,
            rows=rows,
            columns=columns
        )
        classdetails.save()

        return Response({'message':'Classroom details entered successfully'})
    
class SubjectSet(APIView):
    def post(self,request):
        branch_name=request.data.get('branch_name')
        sub_name=request.data.get('sub_name')
        

        classdetail=SubjectDetails(
            branch_name=branch_name,
            sub_name=sub_name
            
        )
        classdetail.save()

        return Response({'message':'Subject details entered successfully'})
    
class StudentSet(APIView):
    def post(self,request):
        class_name=request.data.get('class_name')
        roll_no=request.data.get('roll_no')
        

        studentdetail=StudentDetails(
            class_name=class_name,
            roll_no=roll_no
            
        )
        studentdetail.save()

        return Response({'message':'Student details entered successfully'})
class TimeTableSet(APIView):
    def post(self,request):
        branch_name=request.data.get('branch_name')
        subject_name=request.data.get('subject_name')
        date=request.data.get('date')
        session=request.data.get('session')

        timetabledetails=TimeTable(
            branch_name=branch_name,
            subject_name=subject_name,
            date=date,
            session=session
        )
        timetabledetails.save()

        return Response({'message':'Timetable entered successfully'})
    
class LoginAPIView(APIView):
    def post(self, request):
        serializer = loginSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        response_data = serializer.create(serializer.validated_data)

        return Response(response_data, status=status.HTTP_200_OK)