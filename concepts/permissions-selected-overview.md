---
 "Overview of SharePoint & OneDrive Selected Microsoft Graph permissions"
 "OneDrive and SharePoint services on Microsoft Graph expose a set of Selected scopes allowing for granular consent down to the file/list item level."
 patrodg
 patrodg
 patrodg
 concept-article
 high
 entra-applications
 4/3/2024
 graphiamtop20, scenarios:getting-started
 As a developer integrating with Microsoft Graph, I want to learn about using Selected permissions to access SharePoint and OneDrive resources in the least priveldged way.
---

# Overview of Selected Permissions in OneDrive and SharePoint

SharePoint and OneDrive have a long-established permissions model that doesn't fit exactly into the scopes model. For example, there couldn't exist a global scope that provides ReadWrite access to a single list in your tenant. Instead we created Selected scopes to support these scenarios. Initially limited to Sites.Selected for Applications as a way to restrict an application's access to a single site collection. Lists, List Items, Folders, and Files as outlined in the table are now supported - and all Selected scopes now support delegated and application modes.

> Due to the evolution of scope naming requirements the newer scopes are listed as a full tuple `*.SelectedOperations.Selected`, there is no functional difference compared to the `Sites.Selected` format.

## Scopes

|Scopes|Description|
|---|---|
|Sites.Selected|Manages application access at the site collection level, providing access to a specific site collection|
|Lists.SelectedOperations.Selected|Manages application access at the list level, providing access to a specific list|
|ListItems.SelectedOperations.Selected|Manages application access at the list item or folder level, providing access to one or more list items|
|Files.SelectedOperations.Selected|Manages application access at the file or library folder level, providing access to one or more files|

## How Selected Scopes work with SharePoint & OneDrive Permissions

When an administrator consents to Selected scopes for an application they're delegating management of resource permissions to the owners of that resource within the workload. For other scopes, such as Files.Read.All, as soon as the scope is consented the application can access the resources it represents. With Selected scopes an assignment action is required, an application consented for Lists.SelectedOperations.Selected would initially have no access.

> Assigning application permissions breaks inheritance on the assigned resource, so be mindful of [service limits for unique permissions](https://learn.microsoft.com/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#unique-security-scopes-per-list-or-library) in your solution design.

An example of setting permissions is shown for [sites](../api-reference/beta/api/site-get-permission.md) but the logic is similar for [lists](../api-reference/beta/api/list-get-permission.md), [list items](../api-reference/beta/api/listitem-get-permission.md), [files](../api-reference/beta/api/driveitem-post-permission.md), or [folders](../api-reference/beta/api/listitem-get-permission.md).

### Roles

There are four roles, which can be assigned to an application for a given resource:

|Role|Description|
|---|---|
|read|Read the metadata and contents of the resource|
|write|Read and modify the metadata and contents of the resource|
|owner|Represents the owner role|
|fullcontrol|Represents full control of the resource|

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_permission_from_"
}
-->
``` http
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
``` http
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

The resource documentation contains full examples for managing permissions through the /permissions API.

### What Permissions Do I need to Manage Permissions?

The permission requirements vary by level, in all delegated cases the current user also needs sufficient permissions to manage access by calling the API.

|Resource|Required Resource Permissions|Notes
|---|---|---|
|sites|Sites.FullControl.All|Because you can grant full control permissions to a site collection using Sites.Selected this requirement is necessarily high|
|lists|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner||
|list items|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner, Lists.SelectedOperations.Selected+FullControl, Lists.SelectedOperations.Selected+Owner||
|files|Sites.FullControl.All, Sites.Selected+FullControl, Sites.Selected+Owner, Lists.SelectedOperations.Selected+FullControl, Lists.SelectedOperations.Selected+Owner||


### How Access is Calculated

There are two types of tokens, Application Only and Delegated. Application only scenarios have no user present and are considered higher risk. With delegated the application can never exceed the current user's existing permissions and can be considered lower-risk for many scenarios. Delegated should be preferred when possible, but both modes are available to meet your needs.

We conceptually store a tuple of Application ID, Resource ID, and Role. This means that [application] has [role] access to [resource]. You specify the application and role when a permission is created through the API, the resolved path gives us the resource. For example, application Z has "read" access to the list at "/sites/dev/lists/list1."

When calculating access, we use the values provided in the token to roughly follow this flow:

1. Review Token type (Application/Delegated)
2. Find Application record for supplied application ID on resource or a securable hierarchical parent (inheritance)
3. Then:

    *Application Access*

    For application access if a record is found for the application, and the role allows for the operation requested (read an item, update a list) then access is granted

    *Delegated Access*

    In the delegated scenario both the application and user permissions are calculated and then intersected, meaning the application can never exceed the user's permissions and the user can never exceed (through the application) the consented application permissions

### Behavior of Consents / Notes

* Applications can have multiple Selected consents and for those consents to apply at various level across the tenant
* application access is lost as soon as a scope is revoked, if an application has Lists.* and Sites.* and is given access to a site collection and a specific list in that site collection and then the Sites.* consent is revoked it would maintain access to the list it was given specific access to via the Lists.* consent and the previous call to list/permissions
* Higher level scopes such as Sites.* can be used to grant file specific level permissions, but lower scopes can never provide access to higher level resources. Allowing applications to ONLY have access at a specific level
* Consent is an external concept, consumed by OneDrive and SharePoint through the provided token, and we honor any scopes presented in the token





