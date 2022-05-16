<!-- markdownlint-disable MD041-->

As an application developer, you must identify how your application accesses data: The application can use delegated access, on behalf of a signed-in user, or direct access with the identity of the application.

:::image type="content" source="../images/access-scenarios.png" alt-text="Image shows illustration of access scenarios.":::

### Delegated access (access on behalf of a user)

In this access scenario, a user has signed into a client application. The client application accesses the resource on behalf of the user. Delegated access requires delegated permissions. Both the client and the user must be authorized separately to make the request.

For the client app, the correct delegated permissions must be granted. Delegated permissions are also referred to as **scopes**. Scopes are permissions of a given resource that the client application exercises on behalf of a user. They are strings that represent what the application wants to do on behalf of the user. 

For the user, the authorization relies on the privileges that the user has been granted for them to access the resource. For example, the user might be assigned a particular role in a role-based access control system (RBAC). See [role-based access control](/azure/active-directory/develop/custom-rbac-for-developers) to learn more about RBAC roles.

### Direct access (App-only access)

In this access scenario, the application acts on its own with no user signed in. Application access is used in scenarios such as automation, backup, and data loss prevention. This scenario includes apps that run as background services or daemons. It's appropriate when it's undesirable to have a specific user signed in, or when the data required can't be scoped to a single user. 

Direct access requires **application permissions**. Application permissions are also referred to as **app roles**. When app roles are granted to other applications, they're called applications permissions. The appropriate application permissions or app roles must be granted to the application for it to access the resource. For more information about assigning app roles to applications, see [App roles for applications](/azure/active-directory/develop/howto-add-app-roles-in-azure-ad-apps).