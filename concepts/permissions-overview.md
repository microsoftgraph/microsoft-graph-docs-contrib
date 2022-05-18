---
title: "Overview of Microsoft Graph permissions"
description: "For the Microsoft identity platform to authorize your app to access data through Microsoft Graph, the app must be granted the permissions it needs. Learn more about Microsoft Graph permissions and the considerations for granting them to your app."
author: "jackson-woods"
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
---

# Overview of Microsoft Graph permissions

For the Microsoft identity platform to authorize your app to access data through Microsoft Graph, the app must be granted the permissions it needs.

This topic introduces Microsoft Graph permissions and provides guidance for using the permissions in your app. To see the full list of permissions that Microsoft Graph exposes, see the [Microsoft Graph permissions reference](permissions-reference.md).

To learn more about how permissions work, and watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]


## Microsoft Graph permission types

Microsoft Graph exposes two types of permissions to support its [delegated and app-only access scenarios](/graph/auth/auth-concepts#access-scenarios). These are **delegated permissions** and **application permissions**.

### Delegated permissions

**Delegated permissions**, also called **scopes**, are used in the delegated access scenario. They're permissions that allow the application to act on behalf of a signed-in user. The application will never be able to access anything the signed-in user couldn't access.

For example, an application has been granted the *Files.Read.All* delegated permission on behalf of Tom, the user. The application will only be able to read all files in the organization that Tom can already access.

In a delegated access scenario, an app may allow users to sign in with their Microsoft accounts, work or school accounts, or allow both account types. All delegated permissions are valid for work or school accounts, but not all are valid for Microsoft accounts. In the [Microsoft Graph permissions reference](permissions-reference.md), the *Microsoft Account supported* table columns indicate delegated permissions that are valid for Microsoft accounts.

When a user signs in to an app they, or, in some cases, an administrator, are given a chance to consent to the delegated permissions. If consent is granted, the app is given access to the resources and APIs that it has requested.

### Application permissions

**Application permissions**, also called **app roles**, are used in the direct access scenario, without a signed-in user present. The application will be able to access any data that the permission is associated with. For example, an application granted the *Files.Read.All* application permission will be able to read any file in the organization.

For apps that access resources and APIs without a signed-in user, the application permissions can be pre-consented to by an administrator when the app is installed. Only an administrator can consent to application permissions.

#### Comparison of delegated and application permissions


| <!-- No header--> | Delegated permissions | Application permissions |
|--|--|--|
| Types of apps | Web / Mobile / single-page app (SPA) | Web / Daemon |
| Access context | [Get access on behalf of a user](auth-v2-user.md) | [Get access without a user](auth-v2-service.md) |
| Who can consent | <li> Users can consent for their data <li> Admins can consent for all users | Only admin can consent |
| Other names | <li> Scopes <li>OAuth2 permissions | <li> App roles <li>App-only permissions <li>Direct access permissions  |
| Result of consent | [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) | [appRoleAssignment](/graph/api/resources/approleassignment) |


## Microsoft Graph permissions naming pattern

Microsoft Graph permissions are named in the following pattern: *{resource}*.*{operation}*.*{constraint}* where:

| Value          | Description                                                                                                                                                                                                                  | Examples                                                           |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| `{resource}`   | Refers to a Microsoft Graph resource object to which the permission allows access. For example, the `user` resource.                                                                                                         | `user`, `application`, or `group`                                 |
| `{operation}`  | Refers to the Microsoft Graph API operations that are allowed on the data that's exposed by the resource. For example, `Read` for read operations only,  or `ReadWrite` for create, update, and delete operations.          | `Read`, `ReadBasic`, `ReadWrite`, `Create`, `Manage`, or `Migrate` |
| `{constraint}` | Determines the potential extent of access an app will have within the directory. This value may not be explicitly declared. When undeclared, the default constraint is limited to data that's owned by the signed-in user. | `All`, `AppFolder`, `OwnedBy`, `Selected`, `Shared`, `Hidden`      |

Examples:
+ *User.Read* - Allows the app to read information about the signed-in user.
+ *Application.ReadWrite.All* - Allows the app to manage all applications in the tenant.
+ *Application.ReadWrite.OwnedBy* - Allows the app to manage only the applications that it creates or owns.
+ *Member.Read.Hidden* - Allows the app to read hidden memberships

For the full list of permissions exposed by Microsoft Graph, see the [Microsoft Graph permissions reference](permissions-reference.md).



## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application queries the membership of a container object, it receives a `200 OK` response and a collection of objects. However, if the app doesn't have the permissions to read a certain object type in the container, objects of that type are returned but with limited information, for example, only the object type and ID are returned and other properties have the value `null`. Complete information is returned for the object types that the app has permissions to read.

This principle is applied to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type. Examples include `/groups/{id}/members`, `/users/{id}/memberOf` or `me/ownedObjects`.

For example, a group contains users, groups, and devices. An app has been granted the Microsoft Graph [User.Read.All](permissions-reference.md#user-permissions) and [Group.Read.All](permissions-reference.md#group-permissions) permissions. The app calls the [list group members](/graph/api/group-list-members) API to retrieve the members of the group. Because the app has permissions to access only user and group objects in the group, but not device objects, in the response:
+ All the selected properties of the user and group objects are returned. 
+ For the device objects, only the object type and object ID are returned, but all other properties have a value of *null*.

### Example

#### Request

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/{id}/members
```

#### Response
The following is an example of the response:
```json
{
"@odata.context":"https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
    "value":[
        {
            "@odata.type":"#microsoft.graph.user",
            "id":"69d035a3-29c9-469f-809d-d21a4ae69e65",
            "displayName":"Jane Dane",
            "createdDateTime":"2019-09-18T09:06:51Z",
        },
        {
            "@odata.type":"#microsoft.graph.group",
            "id":"c43a7cc9-2d95-44b6-bf6a-6392e41949b4",
            "displayName":"Group 1",
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

Microsoft Graph exposes granular permissions that allow an app to request only the permissions it requires to function. This allows you to apply the **principle of least privilege** when assigning and granting permissions to an app.

For example, to read only the profile information of the signed-in user, an app requires only the `User.Read` permission, which is the least privileged permission to access user information. Granting the `User.ReadWrite` permission to the app makes it over-privileged because the app is now granted permissions for actions it doesn't need to perform.

Granting an application more privileges than it needs is a poor security practice that exposes an app to unauthorized and unintended access to data or operations. Also, requiring more permissions than necessary may cause users to refrain from consenting to an app, affecting an app's adoption and usage.

Apply the principle of least privilege when assigning and granting Microsoft Graph permissions to an app. For more information, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access).

## Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](includes/msgraph-permissions-limits.md)]


## Permissions availability status

Microsoft Graph permissions in the [Azure portal](https://portal.azure.com/) are generally available for all apps to use. Permissions that are deprecated are no longer visible in the Azure portal, cannot be granted to apps, and no longer grant access that they may previously allowed.

## See also

+ [Microsoft Graph permissions reference](permissions-reference.md)