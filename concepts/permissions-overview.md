---
title: "Overview of Microsoft Graph permissions"
description: "For the Microsoft identity platform to authorize your app to access data through Microsoft Graph, the app must be granted the permissions it needs. Learn more about Microsoft Graph permissions and the considerations for granting them to your app."
author: "jackson-woods"
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
---

# Overview of Microsoft Graph permissions

For the Microsoft identity platform to authorize your app to access data through Microsoft Graph, the app must be granted the permissions it needs.

This topic introduces Microsoft Graph permissions and their types, their general characteristics, and provides guidance for using the permissions in your app. To see the full list of permissions that Microsoft Graph exposes, see the [Microsoft Graph permissions reference](permissions-reference.md).

To learn more about how permissions work, and watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]

## Microsoft Graph permission types

Microsoft Graph exposes two types of permissions to support its [access scenarios](/graph/auth/auth-concepts#access-scenarios). These are **delegated permissions** and **application permissions**.

[!INCLUDE [msgraph-permission-types](includes/msgraph-permission-types.md)]

## Microsoft Graph permissions naming pattern

Microsoft Graph permissions are named in the following pattern: {resource}.{operation}.{constraint} where:

| Value          | Description                                                                                                                                                                                                                  | Examples                                                           |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| `{resource}`   | Refers to a Microsoft Graph resource object to which the permission allows access. For example, the `User` resource.                                                                                                         | `User`, `Application`, or `Policy`                                 |
| `{operation}`  | Refers to the API operations that are allowed on the data that's exposed by the resource. For example, `Read` for read operations only,  or `ReadWrite` for read and write (create, update, and delete) operations.          | `Read`, `ReadBasic`, `ReadWrite`, `Create`, `Manage`, or `Migrate` |
| `{constraint}` | Determines the potential extent of access your app will have within the directory. This value may not be explicitly declared. When undeclared, the default constraint is limited to data that's owned by the signed-in user. | `All`, `AppFolder`, `OwnedBy`, `Selected`, `Shared`, `Hidden`      |

Examples:
+ *User.Read* - Allows the app to read information about the signed-in user.
+ *Application.ReadWrite.All* - Allows the app to manage all applications in the tenant.
+ *Application.ReadWrite.OwnedBy* - Allows the app to manage only the applications that it creates or owns.
+ *Member.Read.Hidden* - Allows the app to read hidden memberships

For the full list of permissions exposed by Microsoft Graph, see the [Microsoft Graph permissions reference](permissions-reference.md).

## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application queries the membership of a container object, it receives a `200 OK` response and a collection of objects. However, if the app does not have the permissions to read a certain type in the container, objects of that type are returned but with limited information, for example, only the object type and ID are returned and other properties have the value `null`. Complete information is returned for the object types that the app has permissions to read.

This is applied to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type (not just member links). Examples include `/groups/{id}/members`, `/users/{id}/memberOf` or `me/ownedObjects`.

For example, a group contains users, groups, and devices. An app has the [User.Read.All](#user-permissions) and [Group.Read.All](#group-permissions) permissions for Microsoft Graph. The app calls the [list group members](/graph/api/group-list-members) API to retrieve the members of the group. Because the app has permissions to access only user and group objects in the group, but not device objects, in the response:
+ All the selected properties of the user and group objects are returned. 
+ For the device objects, however, only the object type and object ID are returned, but all other properties have a value of *null*.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/{id}/members
```

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

Microsoft Graph exposes granular permissions that allow your app to request only the permissions it requires to function. This allows you to apply the **principle of least privilege** when granting permissions to your app.

For example, to read only the profile information of the signed-in user, an app requires only the `User.Read` permission which is the least privileged permission to access user information. Granting the `User.ReadWrite` permission to the app makes it over-privileged because the app is now granted permissions for actions it doesn't need to perform.

Granting your application more privileges than it needs is a poor security practice that exposes your app to unauthorized and unintended access to data or operations. Also, requiring more permissions than necessary may may cause users to refrain from consenting to your app, affecting your app's adoption and usage.

Apply the principle of least privilege when selecting and granting Microsoft Graph permissions to your app. For more information, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access).

## Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](includes/msgraph-permissions-limits.md)]

## See also

+ [Microsoft Graph permissions reference](permissions-reference.md)