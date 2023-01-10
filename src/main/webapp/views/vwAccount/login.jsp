<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/news.google.com.ico">
  <title>Đăng nhập</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<form id="formAuthentication" action="${pageContext.request.contextPath}/Account/Login" method="post">
  <div
          class="flex flex-col items-center justify-center h-screen w-screen gap-y-5"
  >

    <a href="${pageContext.request.contextPath}/Home">
    <img
            src="${pageContext.request.contextPath}/assets/images/Logo.png"
            class="w-[300px] h-[60px] cursor-pointer hover:opacity-50"
    />
    </a>
    <div class="text-2xl text-gray-500 font-semibold text-left">
      Trang đăng nhập
    </div>
    <div class="flex flex-start w-[300px]">
      <p class="text-red-500 font-semibold text-sm">${message}</p>
    </div>
    <!-- input email -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Tài khoản</p>
      <input
              type="text"
              id="username"
              name="username"
              placeholder="Tài khoản của bạn"
              autofocus
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <!-- input password -->
    <div class="flex flex-col gap-y-1">
      <p class="text-gray-600 font-bold ml-2">Mật khẩu</p>
      <input
              type="password"
              id="password"
              name="password"
              placeholder="Nhập mật khẩu của bạn"
              required
              class="w-[300px] border-gray-200 border px-4 py-2 bg-gray-100 rounded-full"
      />
    </div>
    <!-- button section -->
    <div class="flex flex-col gap-y-4">
      <a
              href="${pageContext.request.contextPath}/Account/ForgetPassword"
              class="text-blue-600 hover:text-blue-700 focus:text-blue-700 active:text-blue-800 duration-200 transition ease-in-out text-center"
      >Quên mật khẩu?</a
      >
      <!-- login button -->

      <button
              type="submit"
              class="bg-blue-500 text-white font-bold rounded-full py-2 w-[300px] text-center mt-4 hover:opacity-50"
      >
        Đăng nhập
      </button>
      <!-- submit button -->

        <a href="${pageContext.request.contextPath}/Account/Register" class="bg-blue-50 text-blue-900 font-bold rounded-full py-2 w-[300px] text-center hover:opacity-50">
          <span>Tạo tài khoản</span>
        </a>

    </div>

  </div>
</form>
</body>

<script type="text/javascript">

  $(document).ready(function() {
    $("#formAuthentication").validate({
      rules: {
        email: {
          required: true,
          email: true
        },
        username: "required",
        password: "required",
      },

      messages: {
        email: {
          required: "Please enter email",
          email: "Please enter a valid email address"
        },

        password: "Please enter password"
      }
    });

  });
</script>
</html>



