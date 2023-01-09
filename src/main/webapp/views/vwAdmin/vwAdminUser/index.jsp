
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean
        id="allUsers"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.User>"
/>
<t:admin>
    <jsp:body>

        <div class="mt-10">
            <div class="flex items-center px-8 justify-between">
                <h1 class="text-gray-600 text-3xl font-bold">
                    Quản lý người dùng
                </h1>
                <form
                        name="changePage"
                        method="get"
                        action="${pageContext.request.contextPath}/Staff/Admin/User"
                >
                    <select
                            onchange="this.form.submit()"
                            name="page"
                            id="page"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    >
                        <c:forEach begin="1" end="${maxPage}" var="p">
                            <option value=${p} ${page == p ? "selected" : ""}>
                                Trang ${p}
                            </option>
                        </c:forEach>
                    </select>
                </form>
            </div>

            <div
                    class="overflow-x-auto relative shadow-md sm:rounded-lg mx-8 my-8 border border-gray-200"
            >
                <table
                        class="w-full text-sm text-left text-gray-500 dark:text-gray-400 overflow-y-auto"
                >
                    <thead
                            class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
                    >
                    <tr>
                        <th scope="col" class="py-3 px-6">Tên người dùng</th>
                        <th scope="col" class="py-3 px-6">Email</th>
                        <th scope="col" class="py-3 px-6">Tên đăng nhập</th>
                        <th scope="col" class="py-3 px-6">Vai trò</th>
                        <th scope="col" class="py-3 px-6">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${allUsers}" var="u">
                        <tr
                                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
                        >
                            <th
                                    scope="row"
                                    class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                            >
                                ${u.firstName} ${u.lastName}
                            </th>
                            <td class="py-4 px-6">${u.email}</td>
                            <td class="py-4 px-6">${u.username}</td>
                            <td class="py-4 px-6">
                                <form
                                        name="changeRole"
                                        method="post"
                                        action="${pageContext.request.contextPath}/Staff/Admin/ChangeUserRole"
                                >
                                    <input type="hidden" name="userid" id="userid" value="${u.userID}">
                                    <select
                                            onchange="this.form.submit()"
                                            name="roleid"
                                            id="role"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    >
                                        <option value=1 ${u.roleID == 1 ? "selected" : ""}>Subscriber</option>
                                        <option value=2 ${u.roleID == 2 ? "selected" : ""}>Writer</option>
                                        <option value=3 ${u.roleID == 3 ? "selected" : ""}>Editor</option>
                                    </select>
                                </form>
                            </td>
                            <td class="py-4 px-6">
                                <form
                                        method="post"
                                        action="${pageContext.request.contextPath}/Staff/Admin/DeleteUser"
                                >
                                    <button
                                            type="submit"
                                            id="userid"
                                            name="userid"
                                            value="${u.userID}"
                                            class="font-medium text-blue-600 dark:text-blue-500 hover:underline"
                                    >
                                        Xóa người dùng
                                    </button>
                                </form>
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:body>
</t:admin>
