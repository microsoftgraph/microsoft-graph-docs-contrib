---
title: "Overview of Selected Permissions in OneDrive and SharePoint"
description: "OneDrive and SharePoint services on Microsoft Graph expose a set of Selected scopes allowing for granular consent down to the list & list item level."
author: "patrick-rodgers"
ms.localizationpriority: high
ms.subservice: sharepoint
ms.topic: concept-article
scenarios: getting-started
#Customer intent: As a developer integrating with Microsoft Graph, I want to learn about using Selected permissions to access SharePoint and OneDrive resources in the least privileged way.
ms.date: 11/07/2024
---

# Overview of Selected permissions in OneDrive and SharePoint

SharePoint and OneDrive have a long-established permissions model that doesn't fit exactly into the scopes model. For example, a global scope that provides ReadWrite access to a single list in your tenant doesn't exist. Instead, Selected scopes support these scenarios. Initially, Sites.Selected existed to restrict an application's access to a single site collection. Now, lists, list items, folders, and files are also  supported, and all Selected scopes now support delegated and application modes.

> [!NOTE]
> Due to the evolution of scope naming requirements, newer scopes are listed as a full tuple `*.SelectedOperations.Selected`. There is no functional difference between this format and the `Sites.Selected` format.

## Scopes

The following table lists the Selected permission scopes.

|Scopes|Description|
|---|---|
|Sites.Selected|Manages application access at the site collection level, providing access to a specific site collection|
|Lists.SelectedOperations.Selected|Manages application access at the list level, providing access to a specific list|
|ListItems.SelectedOperations.Selected|Manages application access at the files, list item, or folder level, providing access to one or more list items|
|Files.SelectedOperations.Selected|Manages application access at the file or library folder level, providing access to one or more files|

## How Selected scopes work with SharePoint and OneDrive permissions

When an administrator consents to Selected scopes for an application, they're delegating management of resource permissions to the owners of that resource within the workload. For other scopes, such as Files.Read.All, as soon as the scope is consented, the application can access the resources it represents. Selected scopes require an explicit assignment action; an application consented for Lists.SelectedOperations.Selected would initially have no access.

Selected scopes require a series of steps to work, which provides several means of control for administrators. The following example uses the `Lists.SelectedOperations.Selected` scope, but the steps apply to all *.Selected scopes.

1. The application must be consented in Entra ID to have either the application or delegated `Lists.SelectedOperations.Selected` scope.
2. The application must be granted permissions to a list via a call to `POST /sites/{siteid}/lists/{listid}/permissions` with a specific role.
3. The application must acquire a valid token that contains the `Lists.SelectedOperations.Selected` scope for calls to the permissioned list.

If any of the three steps are missed, the application doesn't have access. Administrators two points of control:

- Remove the permissions on a specific list via a call to `DELETE /sites/{siteid}/lists/{listid}/permissions/{id}`, which removes access to the list for that application.
- Revoke the `Lists.SelectedOperations.Selected` scope consent in Entra ID, which blocks the application from access to any list to which it was previously granted permissions.

Based on this, you can consent an application the `Lists.SelectedOperations.Selected` scope in Entra ID, but not grant permissions to any list - which means the application doesn't have access. Likewise, you can call `POST /sites/{siteid}/lists/{listid}/permissions` for any application, but without the proper scopes appearing in the token, the application doesn't have access. All three steps must be completed to ensure the expected access. This applies as well for the other *.Selected scopes and their respective levels.

> [!NOTE]
> Assigning application permissions to lists, list items, folders, or files breaks inheritance on the assigned resource, so be mindful of [service limits for unique permissions](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#unique-security-scopes-per-list-or-library) in your solution design. Permissions at the site collection level do not break inheritance because this is the root of permission inheritance.

An example of setting permissions is shown for [sites](/graph/api/site-post-permissions); the logic is similar for [lists](/graph/api/list-post-permissions), [list items](/graph/api/listitem-post-permissions), [files](/graph/api/driveitem-post-permissions), or [folders](/graph/api/listitem-post-permissions).

### What's the difference between files and listItems scopes?

Within SharePoint, all files are list items, but all list items are not files. As a result, applications that carry the `ListItems.SelectedOperations.Selected` scope can access and operate on all list items and files up to their allowed role. Applications with `Files.SelectedOperations.Selected` can only operate on files (list items) within document libraries or other lists marked as containing documents. This mimics the Files.Read.All and Files.ReadWrite.All behavior that exists today, but isolated to a single file. This behavior doesn't change based on the Microsoft Graph path used such as with `/drives/{driveid}/items/{itemid}` and `/sites/{siteid}/lists/{listid}/items/{itemid}`; rather, the destination to be accessed controls the behavior.

### Roles

The following table lists the four roles that can be assigned to an application for a given resource.

|Role|Description|
|---|---|
|read|Read the metadata and contents of the resource.|
|write|Read and modify the metadata and contents of the resource.|
|owner|Represents the owner role.|
|fullcontrol|Represents full control of the resource.|

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_permission_from_"
}
-->
```http
POST https://graph.microsoft.com/v1.0/sites/{siteId}/permissions
Content-Type: application/json

{
  "roles": ["write"],
  "grantedToIdentities": [{
    "application": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "displayName": "Contoso Time Manager App"
    }
  }]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/create-permission-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/create-permission-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/create-permission-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/create-permission-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/create-permission-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/create-permission-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/create-permission-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "id": "1",
    "@deprecated.GrantedToIdentities": "GrantedToIdentities has been deprecated. Refer to GrantedToIdentitiesV2",
    "roles": ["write"],
    "grantedToIdentities": [{
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Contoso Time Manager App"
      }
    }],
    "grantedToIdentitiesV2": [{
      "application": {
        "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
        "displayName": "Contoso Time Manager App"
      }
    }]
}
```

For examples that show how to manage permissions, see the `/permissions` API topics for [site](/graph/api/site-post-permissions), [list](/graph/api/list-post-permissions), [listItem](/graph/api/listitem-post-permissions), and [driveItem](/graph/api/driveitem-post-permissions).

### What permissions do I need to manage permissions?

The permission requirements vary by level. In all delegated, cases the current user also needs sufficient permissions to manage access by calling the API. The following table includes scopes and scopes + assigned roles to the parent resource. For example, if you have the Sites.Selected scope AND FullControl role (Sites.Selected+FullControl), you can manage resources within that site collection.

|Resource|Required resource permissions|Notes
|---|---|---|
|site|Sites.FullControl.All|Because you can grant full control permissions to a site collection by using Sites.Selected, this requirement is necessarily high.|
|list|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner||
|listItem|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner, Lists.SelectedOperations.Selected+FullControl, Lists.SelectedOperations.Selected+Owner||
|file|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner, Lists.SelectedOperations.Selected+FullControl, Lists.SelectedOperations.Selected+Owner||


### How access is calculated

There are two types of tokens: application only and delegated. Application only scenarios have no user present and are considered higher risk. With delegated, the application can never exceed the current user's existing permissions and can be considered lower-risk for many scenarios. Delegated is preferred when possible, but both modes are available to meet your needs.

A tuple of application ID, resource ID, and role is stored. As such, the [application] has [role] access to the [resource]. You specify the application and role when a permission is created through the API, and the resolved path gives you the resource. For example, application Z has read access to the list at /sites/dev/lists/list1.

To calculate access, use the values provided in the token to roughly follow this flow:

1. Review token type (application or delegated).
2. Find the application record for the supplied application ID on the resource or a securable hierarchical parent (inheritance).
3. One of the following occurs:

    - For application access, if a record is found for the application, and the role allows for the operation requested (read an item, update a list), access is granted.
    - In the delegated scenario, both the application and user permissions are calculated and then intersected, which means that the application can never exceed the user's permissions, and the user can never exceed (through the application) the consented application permissions.

### Consent behavior notes

The following notes apply to consent behavior:

* Applications can have multiple Selected consents and those consents can apply at various levels across the tenant.
* Application access is lost as soon as a scope is revoked. If an application has Lists.* and Sites.* and is given access to a site collection and a specific list in that site collection, and then the Sites.* consent is revoked, the application maintains access to the list it was given specific access to via the Lists.* consent and the previous call to `list/permissions`.
* If an application has permissions to a list via a call to `list/permissions`, and the access is removed via a call to `DELETE lists/permissions/id`, it loses access to that list and all items within that list, regardless of any explicit permissions set on those list items. You can later regrant specific item permissions if needed.
* Higher-level scopes such as Sites.* can be used to grant file-specific permissions, but lower scopes can never provide access to higher-level resources. This allows applications to have access at a specific level.
* Consent is an external concept, consumed by OneDrive and SharePoint through the provided token, and any scopes presented in the token are honored.





