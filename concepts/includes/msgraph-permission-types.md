<!-- markdownlint-disable MD041-->

**Delegated permissions** are used in the delegated access scenario. They're permissions that allow the application to act on a user's behalf. The application will never be able to access anything users themselves couldn't access.

For example, imagine an application that has been granted the *Files.Read.All* delegated permission on behalf of Tom, the user. The application will only be able to read all files that only Tom can already access. It won't be able to read every file in the organization.

Not all delegated permissions are valid for both Microsoft accounts and work or school accounts. Depending on the account type that you defined when you registered the app with the Microsoft identity platform, some delegated permissions may not be available to be granted to your app.

**Application permissions** are used in the direct access scenario, without a signed-in user present. The application will be able to access any data that the permission is associated with. For example, an application granted the *Files.Read.All* application permission will be able to read any file in the tenant. Only an administrator can consent to application permissions.

##### Comparison of delegated and application permissions


| <!-- No header--> | Delegated permissions | Application permissions |
|--|--|--|
| App type scenarios | Web / Mobile / single-page app (SPA) | Web / Daemon |
| Access context | [Get access on-behalf of a user](../auth-v2-user.md) | [Get access as a service](../auth-v2-service.md) |
| Who can consent | <li> Users can consent for their data <li> Admins can consent for all users | Only admin can consent |
| Other names | <li> scopes <li>OAuth2 permissions | <li> App roles <li>App-only permissions <li>Direct access permissions  |
| Result of consent | [oAuth2PermissionGrants](/graph/api/resources/oauth2permissiongrant) | [appRoleAssignments](/graph/api/resources/approleassignment) |