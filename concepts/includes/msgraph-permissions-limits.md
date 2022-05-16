<!-- markdownlint-disable MD041-->

Microsoft Graph exposes granular permissions that allow your app to request only the permissions it requires to function. This allows you to apply the **principle of least privilege** when granting permissions to your app.

For example, to read only the profile information of the signed-in user, an app requires only the `User.Read` permission which is the least privileged permission to access user information. Granting the `User.ReadWrite` permission to the app makes it over-privileged because the app is now granted permissions for actions it doesn't need to perform.

Granting your application more privileges than it needs is a poor security practice that exposes your app to unauthorized and unintended access to data or operations. Also, requiring more permissions than necessary may may cause users to refrain from consenting to your app, affecting your app's adoption and usage.

Apply the principle of least privilege when selecting and granting Microsoft Graph permissions to your app. For more information, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access).