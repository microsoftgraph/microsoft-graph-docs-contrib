---
title: "Overview of Microsoft Graph permissions"
description: "Learn more about working with Microsoft Graph permissions to allow your app to access your data securely."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jackson.woods
ms.topic: concept-article
ms.localizationpriority: high
ms.subservice: entra-applications
ms.date: 12/26/2025
ms.custom: graphiamtop20, scenarios:getting-started, sfi-ga-nochange
#customer intent: As a developer integrating with Microsoft Graph, I want to learn about using Microsoft Graph permissions, so that I can properly request and manage permissions for my app.
---

# Overview of Microsoft Graph permissions

Before the Microsoft identity platform can authorize your app to access data in the Microsoft cloud, you must grant the app the privileges it needs. Similarly, before the Microsoft identity platform can authorize your app to access data through Microsoft Graph, you must grant the app the privileges it needs.

One way to grant an app the privileges it needs to access and work with your data through Microsoft Graph is by assigning it *Microsoft Graph permissions*. Another way is through role-based access control (RBAC) systems, like [Microsoft Entra RBAC](/azure/active-directory/roles/custom-overview). In some cases, access to data through Microsoft Graph APIs might require both Microsoft Graph permissions and RBAC permissions.

This article introduces Microsoft Graph permissions and provides guidance for using them. To see the full list of permissions that Microsoft Graph exposes, see the [Microsoft Graph permissions reference](permissions-reference.md).

To learn more about how permissions work, watch the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/yXYzgWWVdSM]

## Permission types

Microsoft Graph supports [two access scenarios](/graph/auth/auth-concepts), *delegated access* and *app-only access*. In delegated access, the app calls Microsoft Graph on behalf of a signed-in user. In app-only access, the app calls Microsoft Graph with its own identity, without a signed-in user.

To support these access scenarios, Microsoft Graph exposes *delegated permissions* and *application permissions*.

### Delegated permissions

*Delegated permissions*, also called *scopes*, work in the delegated access scenario. These permissions let the application act on behalf of a signed-in user. However, the application can't access anything the signed-in user couldn't access.

For example, an application gets the *Files.Read.All* delegated permission on behalf of Tom, a user. The application can only read all files in the organization that Tom can already access. Tom might be able to access the files because he has permissions through one of the following ways:

- Tom created or owns the files.
- The files were shared directly with Tom, or indirectly shared through a team or group membership.
- Tom has been granted permissions through a supported RBAC system.

**Therefore, in a delegated scenario, the privileges that an app has to act on behalf of a user is determined by the Microsoft Graph permissions that the app has been granted *and* the user's own permissions.**

In a delegated access scenario, an app might allow users to sign in with their personal Microsoft accounts, like Outlook.com, work or school accounts, or both account types. All delegated permissions are valid for work or school accounts, but not all are valid for personal Microsoft accounts. Use the [Microsoft Graph permissions reference](permissions-reference.md) to identify delegated permissions that are valid for personal Microsoft accounts.

When a user signs in to an app, they, or, in some cases, an administrator, get a chance to consent to the delegated permissions. If they grant consent, the app can access resources and APIs within the boundaries of the user's permissions.

> [!NOTE]
> Permissions granted through [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) don't limit the app to calling Microsoft Graph APIs only.

### Application permissions

*Application permissions*, also called *app roles*, work in the app-only access scenario, without a signed-in user present. The application can access *any* data that the permission is associated with. For example, an application granted the *Files.Read.All* application permission can read any file in the organization.

For apps that access resources and APIs without a signed-in user, an administrator consents to the application permissions when the app is installed in the tenant or through the Microsoft Entra admin center. Only Privileged Role Administrator and Global Administrator can consent to application permissions.

Apart from being assigned Microsoft Graph application permissions, an app might also be granted the privileges it needs through one of the following conditions:

- When the app is assigned ownership of the resource that it intends to manage.
- When the app is assigned permissions through an RBAC system or custom administrative roles.

> [!NOTE]
> Permissions granted through [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) don't limit the app to calling Microsoft Graph APIs only.

### Comparison of delegated and application permissions

| Category | Delegated permissions | Application permissions |
|--|--|--|
| Types of apps | Web app / Mobile / Single-page app (SPA) | Web / Daemon |
| Access context | [Get access on behalf of a user](auth-v2-user.md) | [Get access without a user](auth-v2-service.md) |
| Who can consent | <li> Users can consent for their data <li> Admins can consent for all users | Only admin can consent |
| Other names | <li> Scopes <li>OAuth2 permissions | <li> App roles <li>App-only permissions <li>Direct access permissions  |
| Result of consent | [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) object| [appRoleAssignment](/graph/api/resources/approleassignment) object |
| Supported **signInAudience** types | AzureADMyOrg <br/> AzureADMultipleOrgs <br/> AzureADandPersonalMicrosoftAccount <br/> PersonalMicrosoftAccount | AzureADMyOrg <br/> AzureADMultipleOrgs <br/> AzureADandPersonalMicrosoftAccount |

The following image illustrates an app's privileges in delegated vs app-only access scenarios.

:::image type="content" source="images/auth-v2/app-privileges-illustration.png" alt-text="Illustration of application privileges in delegated vs app-only access scenarios.":::

### Best practices for selecting permission types for connector agent registration

Microsoft Graph connector agents run as background services and require Microsoft Graph application permissions.

*Delegated permissions aren't supported* for connector agent registration and cause registration failures, even when the permissions appear correctly configured.

Request the *least‑privileged application permissions* needed for your connector scenario and ensure *tenant‑wide admin consent* is granted.

## Permissions naming pattern

Microsoft Graph exposes granular permissions that help you control the access that apps have to Microsoft Graph resources, like users, groups, and mail. These permissions follow the naming pattern: 

*{resource}*.*{operation}*.*{constraint}*

| Value          | Description                                                                                                                                                                                                                  | Examples                                                           |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| `{resource}`   | Refers to a Microsoft Graph resource to which the permission grants access. For example, the `user` resource.                                                                                                         | `User`, `Application`, or `Group`                                 |
| `{operation}`  | Refers to the Microsoft Graph API operations that are allowed on the data exposed by the resource. For example, `Read` for read operations only, or `ReadWrite` for read, create, update, and delete operations.          | `Read`, `ReadBasic`, `ReadWrite`, `Create`, `Manage`, or `Migrate` |
| `{constraint}` | Determines the potential extent of access an app has within the directory. This value might not be explicitly declared. When undeclared, the default constraint is limited to data that's owned by the signed-in user. | `All`, `AppFolder`, `OwnedBy`, `Selected`, `Shared`, `Hidden`      |

Examples:
- *User.Read* - Allows the app to read information about the signed-in user.
- *Application.ReadWrite.All* - Allows the app to manage all applications in the tenant.
- *Application.ReadWrite.OwnedBy* - Allows the app to manage only the applications that it creates or owns.
- *Group.Create* - Allows the application to create new groups, but not modify or delete them.
- *Member.Read.Hidden* - Allows the app to read hidden memberships.

For the full list of permissions exposed by Microsoft Graph, see the [Microsoft Graph permissions reference](permissions-reference.md).

## Resource-specific consent (RSC) permissions

RSC is an authorization framework that grants scoped access to the data exposed by a resource. Through RSC, an authorized user can give an app access to the data of a specific instance of a resource type. They don't need to give app access to every instance of the resource type in the entire tenant.

RSC permissions are also available for consent and are supported by only a subset of features available through Microsoft Graph such as Teams, chats, and messages. For more information, see [RSC permissions](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) and the [full list of available RSC permissions](./permissions-reference.md#resource-specific-consent-rsc-permissions).

## Limited information returned for inaccessible member objects

Container objects such as groups support members of various types, for example users and devices. When an application with the right privileges queries the membership of a container object, it receives a `200 OK` response and a collection of objects. However, if the app doesn't have the permissions to read a certain object type in the container, the app receives objects of that type but with limited information. For example, only the object type and ID might be returned and other properties are indicated as `null`. The app receives complete information for the object types that it has permissions to read.

This principle applies to all relationships that are of [directoryObject](/graph/api/resources/directoryobject) type. Examples include `/groups/{id}/members`, `/users/{id}/memberOf`, and `me/ownedObjects`.

For example, a group can have users, groups, applications, service principals, devices, and contacts as members. An app is granted the *GroupMember.Read.All* least privileged permission to [List group members](/graph/api/group-list-members). In the response object, only the **id** and **@odata.type** properties are populated for all the members that are returned. The other properties are indicated as `null`. For this API, and to return more information for the group's members, the app needs the following additional permissions:
- To read the basic properties of a group's members that are users, *User.ReadBasic.All* is the least privileged permission.
- To read the basic properties of a group's members that are groups, *GroupMember.Read.All* is the least privileged permission.
- To read the basic properties of a group's members that are devices, *Device.Read.All* is the least privileged permission.
- To read the basic properties of a group's members that are service principals, *Application.Read.All* is the least privileged permission.
- As per the principle of least privilege, use the preceding permissions as appropriate for your application; however, as an alternative to the individual resource-level permissions, assign the app the *Directory.Read.All* permission to read *all properties for all member types*.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/permissions-overview-limitedinfo-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/permissions-overview-limitedinfo-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/permissions-overview-limitedinfo-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/permissions-overview-limitedinfo-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/permissions-overview-limitedinfo-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/permissions-overview-limitedinfo-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/permissions-overview-limitedinfo-example-python-snippets.md)]
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

Microsoft Graph exposes granular permissions that allow an app to request only the permissions it needs to function. Granular permissions let you apply the *principle of least privilege* when assigning and granting permissions to an app. Grant the app the minimum permission it needs for the operation.

Consider the following examples:

- An app needs to read the profile information of the signed-in user. The app requires only the *User.Read* permission, which is the least privileged permission to access the signed-in user's information. Granting the app the *User.ReadWrite* permission makes it over-privileged because the app doesn't need to update the user's profile.
- An app needs to read the groups in the tenant without a signed-in user. The app requires only the *GroupMember.Read.All* application permission, which is the least privileged permission to read groups in the tenant without a signed-in user.
- An app needs to read or write to a calendar of the signed-in user. The app manages dynamic jobs, and syncs from the user's Outlook calendar to keep the app up-to-date so to schedule jobs for the user. Even though [getting](/graph/api/event-delta) the user's calendar data requires *Calendars.Read*, [updating](/graph/api/user-post-events) the calendar with scheduled jobs requires a higher privileged permission, *Calendars.ReadWrite*. In this case, the app should request *Calendars.ReadWrite*.

Granting an application more privileges than it needs is a poor security practice. It increases the app's exposure to unauthorized and unintended access to data or operations. Also, requesting more permissions than necessary might cause users to refrain from consenting to an app, affecting an app's adoption and usage.

Apply the principle of least privilege when assigning and granting Microsoft Graph permissions to an app. For more information, see [Enhance security with the principle of least privilege](/azure/active-directory/develop/secure-least-privileged-access) and [Building apps that secure identity through permissions and consent](/security/zero-trust/develop/identity).

### Permissions to use with caution

Some Microsoft Graph permissions grant access to a wider range of data or operations than others. Use these permissions with caution. For example, the *Directory.AccessAsUser.All* permission is the highest privileged delegated permission that grants access to nearly all API operations across Microsoft Entra ID. *Directory.ReadWrite.All* permission is second in privilege ranking. *Directory.Read.All* is the highest privileged read-only permission for Microsoft Entra ID resources. Use these permissions with caution and only when necessary. Always use lesser-privileged options permissions instead.

In API reference documentation relating to Microsoft Entra ID resources, some of these higher privileged permissions might be intentionally excluded from the table of permissions supported to access the API.

In addition, the Global Administrator role is the highest privileged built-in role in Microsoft Entra ID. In the API reference documentation, this role is intentionally excluded from the list of roles that support access to the API in favor of lesser-privileged roles.

## Limits on requested permissions per app

[!INCLUDE [microsoft-graph-permissions-limits](includes/msgraph-permissions-limits.md)]

## Retrieve permission IDs through Microsoft Graph

To set permissions by using the Azure CLI, PowerShell, or infrastructure as code frameworks, you might need the identifier for the permission that you want to use instead of the name. The [permissions reference](permissions-reference.md) lists IDs for all Microsoft Graph permissions. Alternatively, you can read information about all Microsoft Graph permissions programmatically through the [Get servicePrincipal](/graph/api/serviceprincipal-get) API in Microsoft Graph. The following example shows a request.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='00000003-0000-0000-c000-000000000000')?$select=id,appId,displayName,appRoles,oauth2PermissionScopes,resourceSpecificApplicationPermissions
```

The **appRoles**, **oauth2PermissionScopes**, and **resourceSpecificApplicationPermissions** objects store the application, delegated, and resource-specific consent permissions respectively.

## Related content

- [Microsoft Graph permissions reference](permissions-reference.md).
- [Overview of role-based access control in Microsoft Entra ID](/azure/active-directory/roles/custom-overview).
- [Understanding delegated access](/azure/active-directory/develop/delegated-access-primer)
