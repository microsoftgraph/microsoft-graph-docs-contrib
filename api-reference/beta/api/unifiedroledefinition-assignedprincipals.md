---
title: "List assignedPrincipals"
description: "Get a list the principals (users and groups) directly or transitively assigned to a specific role for different scopes."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List assignedPrincipals
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list the principals (users and groups) directly or transitively assigned to a specific role for different scopes. You can use `count` query parameter to also get the count.

If you want to list the direct and transitive role assignments for a specific principal, use the [List transitiveRoleAssignments](rbacapplication-list-transitiveroleassignments.md) API.

## Permissions
One of the following permissions is required to call this API. At a minimum, a caller must have the `RoleManagement.Read.Directory` permission for queries. If the caller does not have permission to read properties for some of the objects included in the result set, the response will follow the [limited information returned for inaccessible member objects](/graph/permissions-reference#limited-information-returned-for-inaccessible-member-objects) pattern.

To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Read role assignments

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All|

### Read group membership

These permissions are required for transitive assignment queries.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|GroupMember.Read.All, Group.Read.All, Directory.Read.All, GroupMember.ReadWrite.All, Group.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|GroupMember.Read.All, Group.Read.All, Directory.Read.All, GroupMember.ReadWrite.All, Group.ReadWrite.All, Directory.ReadWrite.All|

### Read standard group properties

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Group.Read.All, Directory.Read.All, Group.ReadWrite.All, Directory.ReadWrite.All|

### Read standard user properties

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|User.Read.All, Directory.Read.All, User.ReadWrite.All, Directory.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleDefinitions/{unifiedRoleDefinitionId}/assignedPrincipals(transitive=Boolean,directoryScopeType='parameterValue',directoryScopeId='parameterValue')
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|transitive|Boolean|Indicates whether to include principals assigned through group membership (direct or transitive). `false` by default.|
|directoryScopeType|String|Directory scope type to get assigned principals for. Supported values are `tenant`, `administrativeUnit`, and `resource`.|
|directoryScopeId|String|ID of the directory scope to get assigned principals for. By default, all scopes are considered.|

### directoryScopeType

|Scope|Query|Supported for|
|:---|:---|:---|
|All scopes|`assignedPrincipals(transitive=true\|false)`|All roles|
|Tenant scope|`assignedPrincipals(directoryScopeType='tenant', transitive=true\|false)`|All roles|
|All administrative unit scopes|`assignedPrincipals(directoryScopeType='administrativeUnit', transitive=true\|false)`|Directory roles|
|Specific administrative unit scope|`assignedPrincipals(directoryScopeType='administrativeUnit', directoryScopeId ='<guid>', transitive=true\|false)`|Directory roles|
|All resource scopes|`assignedPrincipals(directoryScopeType='resource', transitive=true\|false)`|Directory roles|
|Specific resource scope|`assignedPrincipals(directoryScopeType='resource', directoryScopeId ='<guid>', transitive=true\|false)`|Directory roles|

## Optional query parameters

This method supports the `$count` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) collection in the response body.

## Examples

For the examples in this section, consider the following role assignment scenario. A user named Alice has both direct and transitive role assignments as follows:

| User | Group | Role | Scope |
| :---: | :---: | :---: | :---: |
| User1<br/>`6c62e70d-f5f5-4b9d-9eea-ed517ed9341f` |  | Role1 | Scope1 |
| User1<br/>`6c62e70d-f5f5-4b9d-9eea-ed517ed9341f` |  | Role1 | Scope2 |
|  | Group1<br/>`86b38db7-6e8b-4ad2-b2aa-ced7f09486c1`<br/>(User1 is a member) | Role1 | Scope1 |
|  | Group2<br/>`182351a6-d974-4d18-88ae-8a148da44cd2`<br/>(User1 is a member) | Role1 | Scope1 |
|  | Group3<br/>`b93d5379-a464-4db5-b8e1-694910f1e11e`<br/>(User2 is a member)<br/>(User3 is a member) | Role1 | Scope3 |

+ User1 is assigned the Role1 role directly at Scope1 scope.
+ User1 is assigned the Role1 role directly at Scope2 scope.
+ User1 is member of the Group1 group and Group1 is assigned the Role1 role at Scope1 scope.
+ User1 is member of the Group2 group and Group2 is assigned the Role1 role at Scope1 scope.
+ User2 is member of the Group3 group and Group3 is assigned the Role1 role at Scope3 scope.
+ User3 is member of the Group3 group and Group3 is assigned the Role1 role at Scope3 scope.

### Example 1: Get direct and transitive assigned principal counts for all scopes

#### Request

```http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=true)/$count
```

| Example | Count |
| --- | ---|
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=false)/$count` | 4<br/>(User1, Group1, Group2, Group3) |
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=true)/$count` | 6<br/>(User1, User2, User3, Group1, Group2, Group3) |
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=false)/microsoft.graph.user/$count` | 1<br/>(User1) |
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=true)/microsoft.graph.user/$count` | 3<br/>(User1, User2, User3) |
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=false)/microsoft.graph.group/$count` | 3<br/>(Group1, Group2, Group3) |
| `https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(transitive=true)/microsoft.graph.group/$count` | 3<br/>(Group1, Group2, Group3) |



### Example 2: Get directly assigned principals for a specific administrative unit scope and directory role

#### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_scope_role"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(directoryScope='administrativeUnit', directoryScopeId ='<guid>')
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f"
    }
  ]
}
```

### Example 3: Get directly assigned principals for all scopes

#### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_allscopes"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals()
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f",
        "displayName": "User1",
        "userPrincipalName": "user1@contoso.com"
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "86b38db7-6e8b-4ad2-b2aa-ced7f09486c1",
        "displayName": "Group1"
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "182351a6-d974-4d18-88ae-8a148da44cd2",
        "displayName": "Group2"
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "b93d5379-a464-4db5-b8e1-694910f1e11e",
        "displayName": "Group3"
    }
  ]
}
```

### Example 4: Get directly assigned users only for a particular scope

#### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_scope"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals(directoryScopeType='tenant')/microsoft.graph.user
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f",
        "displayName": "User1",
        "userPrincipalName": "user1@contoso.com"
    }
  ]
}
```

### Example 5: Get transitive assigned principals and inline count with minimum permission set

The following example gets the transitive assigned principals and inline count with ([RoleManagement.Read.Directory](/graph/permissions-reference#role-management-permissions) + [GroupMember.Read.All](/graph/permissions-reference#group-permissions)) permission set.

#### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_minimumpermission_count"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/b0f54661-2d74-4c50-afa3-1ec803f12efe/assignedPrincipals()?$count=true
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.directoryObject)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.count": 6,
  "value": [
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f",
        "displayName": null,
        "userPrincipalName": null
    },
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "95024ec5-8e34-47bd-bd7c-ab034b6dc64e",
        "displayName": null,
        "userPrincipalName": null
    },
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "951e631d-11aa-49c3-95d1-4cdad24986d5",
        "displayName": null,
        "userPrincipalName": null
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "86b38db7-6e8b-4ad2-b2aa-ced7f09486c1",
        "displayName": null
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "182351a6-d974-4d18-88ae-8a148da44cd2",
        "displayName": null
    },
    {
        "@odata.type": "#microsoft.graph.group",
        "id": "b93d5379-a464-4db5-b8e1-694910f1e11e",
        "displayName": null
    }
  ]
}
```
