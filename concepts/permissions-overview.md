---
title: "Overview of Microsoft Graph permissions"
description: "Microsoft Graph exposes granular permissions that help you control the access that apps have to Microsoft Graph resources, like users, groups, and mail. Learn more about working with Microsoft Graph permissions to allow your app to access your data securely."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.localizationpriority: high
ms.prod: "applications"
ms.date: 12/07/2022
ms.custom: graphiamtop20, scenarios:getting-started
---

# Overview of Microsoft Graph permissions

Before the Microsoft identity platform can authorize your app to access data in the Microsoft cloud, the app must be granted the privileges that it needs. Similarly, before the Microsoft identity platform can authorize your app to access data through Microsoft Graph, the app must be granted the privileges that it needs.

One way to grant an app the privileges it needs to access and work with your data through Microsoft Graph is by assigning it *Microsoft Graph permissions*.

This article introduces Microsoft Graph permissions and provides guidance for using them. To see the full list of permissions that Microsoft Graph exposes, see the [Microsoft Graph permissions reference](permissions-reference.md).

To learn more about how permissions work, watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]

## Permission types

Microsoft Graph supports [two access scenarios](/graph/auth/auth-concepts), *delegated access* and *app-only access*. In delegated access, the app calls Microsoft Graph on behalf of a signed-in user. In app-only access, the app calls Microsoft Graph with its own identity, without a signed in user.

To support these access scenarios, Microsoft Graph exposes *delegated permissions* and *application permissions*.

### Delegated permissions

*Delegated permissions*, also called *scopes*, are used in the delegated access scenario. They're permissions that allow the application to act on behalf of a signed-in user. However, the application will never be able to access anything the signed-in user couldn't access.

For example, an application has been granted the *Files.Read.All* delegated permission on behalf of Tom, a user. The application will only be able to read all files in the organization that Tom can already access. Tom may be able to access the files because he has permissions through one of the following ways:

- Tom created or owns the files.
- The files were shared directly with Tom, or indirectly shared with him through a team or group membership.
- Tom has been granted permissions through a role-based access control (RBAC) system such as [Azure AD RBAC](/azure/active-directory/roles/custom-overview).

Therefore, in a delegated scenario, the privileges that an app has to act on behalf of a user is determined by the Microsoft Graph permissions that the app has been granted *and* the user's own permissions.

> [!VIDEO https://learn-video.azurefd.net/vod/player?show=one-dev-minute&ep=how-do-delegated-permissions-work]

In a delegated access scenario, an app may allow users to sign in with their personal Microsoft accounts, like Outlook.com, work or school accounts, or allow both account types. All delegated permissions are valid for work or school accounts, but not all are valid for personal Microsoft accounts. Use the [Microsoft Graph permissions reference](permissions-reference.md) to identify delegated permissions that are valid for personal Microsoft accounts.

When a user signs in to an app they, or, in some cases, an administrator, are given a chance to consent to the delegated permissions. If they grant consent, the app can access resources and APIs within the boundaries of the user's permissions.

> [!NOTE]
> Permissions granted through [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference?toc=/graph/toc.json) don't limit the app to calling Microsoft Graph APIs only.

### Application permissions

*Application permissions*, also called *app roles*, are used in the app-only access scenario, without a signed-in user present. The application will be able to access any data that the permission is associated with. For example, an application granted the *Files.Read.All* application permission will be able to read any file in the organization.

For apps that access resources and APIs without a signed-in user, the application permissions can be consented to by an administrator when the app is installed in the tenant or in the Azure portal. Only an administrator can consent to application permissions.

Apart from being assigned Microsoft Graph application permissions, an app may also be granted the privileges it needs through one of the following conditions:

- When the app is assigned ownership of the resource that it intends to manage.
- When the app is assigned an Azure AD built-in or custom administrative roles.

> [!NOTE]
> Permissions granted through [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference?toc=/graph/toc.json) don't limit the app to calling Microsoft Graph APIs only.

### Comparison of delegated and application permissions

| <!-- No header--> | Delegated permissions | Application permissions |
|--|--|--|
| Types of apps | Web app / Mobile / Single-page app (SPA) | Web / Daemon |
| Access context | [Get access on behalf of a user](auth-v2-user.md) | [Get access without a user](auth-v2-service.md) |
| Who can consent | <li> Users can consent for their data <li> Admins can consent for all users | Only admin can consent |
| Other names | <li> Scopes <li>OAuth2 permissions | <li> App roles <li>App-only permissions <li>Direct access permissions  |
| Result of consent | [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) | [appRoleAssignment](/graph/api/resources/approleassignment) |
| Supported **signInAudience** types | AzureADMyOrg <br/> AzureADMultipleOrgs <br/> AzureADandPersonalMicrosoftAccount <br/> PersonalMicrosoftAccount | AzureADMyOrg <br/> AzureADMultipleOrgs <br/> AzureADandPersonalMicrosoftAccount |

The following image illustrates an app's privileges in delegated vs app-only access scenarios.

:::image type="content" source="images/auth-v2/app-privileges-illustration.png" alt-text="Illustration of application privileges in delegated vs app-only access scenarios.":::

## Permissions naming pattern

Microsoft Graph exposes granular permissions that help you control the access that apps have to Microsoft Graph resources, like users, groups, and mail. These permissions are named in the following pattern: 

*{resource}*.*{operation}*.*{constraint}*

| Value          | Description                                                                                                                                                                                                                  | Examples                                                           |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| `{resource}`   | Refers to a Microsoft Graph resource to which the permission allows access. For example, the `user` resource.                                                                                                         | `User`, `Application`, or `Group`                                 |
| `{operation}`  | Refers to the Microsoft Graph API operations that are allowed on the data that's exposed by the resource. For example, `Read` for read operations only,  or `ReadWrite` for read, create, update, and delete operations.          | `Read`, `ReadBasic`, `ReadWrite`, `Create`, `Manage`, or `Migrate` |
| `{constraint}` | Determines the potential extent of access an app will have within the directory. This value may not be explicitly declared. When undeclared, the default constraint is limited to data that's owned by the signed-in user. | `All`, `AppFolder`, `OwnedBy`, `Selected`, `Shared`, `Hidden`      |

Examples:
- *User.Read* - Allows the app to read information about the signed-in user.
- *Application.ReadWrite.All* - Allows the app to manage all applications in the tenant.
- *Application.ReadWrite.OwnedBy* - Allows the app to manage only the applications that it creates or owns.
- *Group.Create* - Allows the application create new groups, but not modify or delete them.
- *Member.Read.Hidden* - Allows the app to read hidden memberships

For the full list of permissions exposed by Microsoft Graph, see the [Microsoft Graph permissions reference](permissions-reference.md).

## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application with the right privileges queries the membership of a container object, it receives a `200 OK` response and a collection of objects. However, if the app doesn't have the permissions to read a certain object type in the container, objects of that type are returned but with limited information, for example, only the object type and ID may be returned and other properties are indicated as `null`. Complete information is returned for the object types that the app has permissions to read.

This principle is applied to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type. Examples include `/groups/{id}/members`, `/users/{id}/memberOf` or `me/ownedObjects`.

### Example scenario

A group's members are users, groups, and devices. An app has been granted the Microsoft Graph [User.Read.All](permissions-reference.md#user-permissions) and [Group.Read.All](permissions-reference.md#group-permissions) permissions. The app calls the [list group members](/graph/api/group-list-members) API to retrieve the members of the group.

To read the basic properties of a group's members that are users, the app needs at least the *User.Read.All* permission. To read the basic properties of a group's members that are groups, the app needs at least the *Group.Read.All* permission. To read the basic properties of a group's members that are devices, the app needs at least the *Device.Read.All* permission.

Because the app has permissions to access only user and group objects in the group, but not device objects, in the response:

- All the basic properties of the user and group member objects are returned. 
- For the device member objects, only the object type and object ID are returned, but all other properties have the value *null*.

### Example

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "permissions-overview-limitedinfo-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/{id}/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/permissions-overview-limitedinfo-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/permissions-overview-limitedinfo-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/permissions-overview-limitedinfo-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/permissions-overview-limitedinfo-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/permissions-overview-limitedinfo-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/permissions-overview-limitedinfo-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following object is an example of the response:
```json
{
"@odata.context":"https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
    "value":[
        {
            "@odata.type":"#microsoft.graph.user",
            "id":"69d035a3-29c9-469f-809d-d21a4ae69e65",
            "displayName":"Adele Vance",
            "createdDateTime":"2019-09-18T09:06:51Z",
        },
        {
            "@odata.type":"#microsoft.graph.group",
            "id":"c43a7cc9-2d95-44b6-bf6a-6392e41949b4",
            "displayName":"All Company",
            "description":null,
            "createdDateTime":"2019-10-24T01:34:35Z"
        },
        {
            "@odata.type":"#microsoft.graph.device",
            "id": "d282309e-f91d-43b6-badb-9e68aa4b4fc8",
            "accountEnabled":null,
            "deviceId":null,
            "displayName":null,
            "operatingSystem":null,
            "operatingSystemVersion":null
        }
    ]
}
```

## Best practices for using Microsoft Graph permissions

Microsoft Graph exposes granular permissions that allow an app to request only the permissions it requires to function. Granular permissions allow you to apply the *principle of least privilege* when assigning and granting permissions to an app, by granting the app the minimum permission it needs for the operation.

Consider the following examples:

- An app needs to only read the profile information of the signed-in user. The app requires only the *User.Read* permission, which is the least privileged permission to access the signed-in user's information. Granting the app the *User.ReadWrite* permission makes it over-privileged because the app doesn't need to update the user's profile.
- An app needs to read the groups in the tenant without a signed-in user. The app requires only the *Group.Read.All* application permission, which is the least privileged permission to read groups in the tenant without a signed-in user.
- An app needs to read or write to a calendar of the signed-in user. The app manages dynamic jobs, and syncs from the user’s Outlook calendar to keep the app up-to-date so to schedule jobs for the user. Even though [getting](/graph/api/event-delta) the user's calendar data requires *Calendars.Read*, [updating](/graph/api/user-post-events) the calendar with scheduled jobs requires a higher privileged permission, *Calendars.ReadWrite*. In this case, the app should request *Calendars.ReadWrite*.

Granting an application more privileges than it needs is a poor security practice that exposes an app to unauthorized and unintended access to data or operations. Also, requesting more permissions than necessary may cause users to refrain from consenting to an app, affecting an app's adoption and usage.

Apply the principle of least privilege when assigning and granting Microsoft Graph permissions to an app. For more information, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access).


## Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](includes/msgraph-permissions-limits.md)]

## Retrieve permission IDs through Microsoft Graph

To set permissions using the Azure CLI, PowerShell, or infrastructure as code frameworks, you may need the identifier for the permission that you want to use instead of the name.

To find the IDs for all Microsoft Graph permissions, see [All permissions and IDs](permissions-reference.md#all-permissions-and-ids). Alternatively, you can read the permissions programmatically through the [Get servicePrincipal](/graph/api/serviceprincipal-get) API in Microsoft Graph.

## See also

- [Microsoft Graph permissions reference](permissions-reference.md).
- [Overview of role-based access control in Azure Active Directory](/azure/active-directory/roles/custom-overview).
- [Understanding delegated access](/azure/active-directory/develop/delegated-access-primer)
