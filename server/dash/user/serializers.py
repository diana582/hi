
from rest_framework import serializers
from .models import Classroom
from .models import AdminLogin
from rest_framework_simplejwt.tokens import RefreshToken

# class ClassroomSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Classroom

#         fields = ('id', 'name', 'block', 'rows', 'columns')

class loginSerializer(serializers.Serializer):
    email = serializers.EmailField()
    password = serializers.CharField(max_length=50)

    def validate(self, attrs):
        email = attrs.get('email')
        password = attrs.get('password')
        print(email, password)

        if email and password:
            adminlogin = AdminLogin.objects.filter(email=email,password=password).first()
             
            if adminlogin:
                attrs['adminlogin'] = adminlogin
                return attrs

        # Authentication failed
        raise serializers.ValidationError('Unable to log in with provided credentials.')

    def create(self, validated_data):
        adminlogin = validated_data['adminlogin']
        refresh = RefreshToken()
        # Set the user ID as the primary key attribute
        refresh['email'] = adminlogin.email # Set any additional claims if needed
        access = refresh.access_token

        return {
            'refresh': str(refresh),
            'access': str(access),
        }