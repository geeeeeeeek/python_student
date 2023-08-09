from rest_framework import exceptions
from rest_framework.authentication import BaseAuthentication

from myapp.models import User


# 接口认证
class AdminTokenAuthtication(BaseAuthentication):
    def authenticate(self, request):
        adminToken = request.META.get("HTTP_ADMINTOKEN")
        # print("检查adminToken==>" + adminToken)

        users = User.objects.filter(admin_token=adminToken)
        """
        判定条件：
            1. 传了adminToken
            2. 查到了该帐号
            3. 该帐号是管理员或演示帐号
        """
        if not adminToken or len(users) == 0 or users[0].role == '2':
            raise exceptions.AuthenticationFailed("AUTH_FAIL_END")
        else:
            print('adminToken验证通过')



