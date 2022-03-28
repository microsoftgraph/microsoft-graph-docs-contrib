---
title: "assignedPrincipals"
description: "Get the users and groups assigned to a role across all scopes."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# assignedPrincipals
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the users and groups assigned to a role across all scopes.

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

### Scopes

|Scope|Query|Supported for|
|:---|:---|:---|
|All scopes|`assignedPrincipals(transitive=true\|false)`|All roles|
|Tenant scope|`assignedPrincipals(directoryScopeType='tenant', transitive=true\|false)`|All roles|
|All administrative unit scopes|`assignedPrincipals(directoryScopeType='administrativeUnit', transitive=true\|false)`|Directory roles|
|Specific administrative unit scope|`assignedPrincipals(directoryScopeType='administrativeUnit', directoryScopeId ='<guid>', transitive=true\|false)`|Directory roles|
|All resource scopes|`assignedPrincipals(directoryScopeType='resource', transitive=true\|false)`|Directory roles|
|Specific resource scope|`assignedPrincipals(directoryScopeType='resource', directoryScopeId ='<guid>', transitive=true\|false)`|Directory roles|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) collection in the response body.

## Examples

The following example gets directly assigned principals for a specific administrative unit scope and directory role.

### Request
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinitionthis.assignedprincipals"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/{unifiedRoleDefinitionId}/assignedPrincipals(directoryScope='administrativeUnit', directoryScopeId ='<guid>')
```


### Response
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
