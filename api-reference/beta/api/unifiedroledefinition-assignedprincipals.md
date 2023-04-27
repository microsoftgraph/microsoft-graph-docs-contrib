---
title: "unifiedRoleDefinition: assignedPrincipals"
description: "Get the list of security principals (users, groups, and service principals) directly or transitively assigned to a specific role for different scopes."
author: "abhijeetsinha"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# unifiedRoleDefinition: assignedPrincipals
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of security principals (users, groups, and service principals) that are assigned to a specific role for different scopes either directly or transitively. You can use the `$count` query parameter to also get the count.

To list the direct and transitive role assignments for a specific principal, use the [List transitiveRoleAssignments](rbacapplication-list-transitiveroleassignments.md) API.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory|

If the caller does not have the permission to read properties for some of the objects included in the result set, the response will follow the [limited information returned for inaccessible member objects](/graph/permissions-overview#limited-information-returned-for-inaccessible-member-objects) pattern.

To read the properties that may require permissions for the object, grant the permissions to retrieve information about the object. For more information, see permissions for [users](user-list.md#permissions), [groups](group-list.md#permissions), and [service principals](serviceprincipal-list.md#permissions).


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /roleManagement/directory/roleDefinitions/{unifiedRoleDefinitionId}/assignedPrincipals
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|transitive|Boolean|Indicates whether to include principals assigned through group membership (direct or transitive). `false` by default.|
|directoryScopeType|String|The directory scope to get assigned principals for. Supported values are `tenant`, `administrativeUnit`, and `resource`.|
|directoryScopeId|String|ID of the directory scope to get assigned principals for. By default, all scopes are considered.|

You can also combine all the supported function parameters in one request for fine-grained results.

### Example query patterns for directoryScopeType

|Scope|Query|Supported for|
|:---|:---|:---|
|All scopes|`/assignedPrincipals(transitive={true | false})`|All roles|
|Tenant scope|`/assignedPrincipals(directoryScopeType='tenant', transitive={true | false})`|All roles|
|All administrative unit scopes|`/assignedPrincipals(directoryScopeType='administrativeUnit', transitive={true | false})`|Directory roles|
|Specific administrative unit scope|`/assignedPrincipals(directoryScopeType='administrativeUnit', directoryScopeId ='{roleDefinitionId | templateId}', transitive={true | false})`|Directory roles|
|All resource scopes|`/assignedPrincipals(directoryScopeType='resource', transitive={true | false})`|Directory roles|
|Specific resource scope|`/assignedPrincipals(directoryScopeType='resource', directoryScopeId ='{roleDefinitionId | templateId}', transitive={true | false})`|Directory roles|

## Optional query parameters

This method supports the `$count`, `$select`, `$filter`, and `$orderBy` OData query parameters to help customize the response. You can also filter by the type of object using OData casting. For example, `/assignedPrincipals(transitive=false)/microsoft.graph.user` and `/assignedPrincipals(transitive=true)/microsoft.graph.servicePrincipal/$count`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|ConsistencyLevel|eventual. Required. For more information about the use of **ConsistencyLevel**, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [directoryObject](../resources/directoryobject.md) collection in the response body.

## Examples

For the examples in this section, consider the following role assignment scenario. A user named User1 has both direct and transitive role assignments as follows:

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

### Example 1: Get a count of direct and transitive assigned principals for all scopes

#### Request

<!-- {
  "blockType": "ignored",
  "name": "unifiedroledefinition_assignedprincipals_count"
}
-->
```http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals(transitive=true)/$count
```

#### Response

The above request will return a count of 6 representing the following role assignments:
+ Two direct role assignments to User1 at Scope1 and Scope2
+ Two transitive role assignments to User1 through Group1 and Group2
+ Two transitive role assignments to User 2 and User3 through Group3.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
Content-type: text/plain

6
```

Using the same scenario, the following examples show the counts that will be returned for each query pattern:

| Example | Count |
| --- | ---|
| `/assignedPrincipals(transitive=false)/$count` | 4<br/>(User1, Group1, Group2, Group3) |
| `/assignedPrincipals(transitive=false)/microsoft.graph.user/$count` | 1<br/>(User1) |
| `/assignedPrincipals(transitive=true)/microsoft.graph.user/$count` | 3<br/>(User1, User2, User3) |
| `/assignedPrincipals(transitive=false)/microsoft.graph.group/$count` | 3<br/>(Group1, Group2, Group3) |
| `/assignedPrincipals(transitive=true)/microsoft.graph.group/$count` | 3<br/>(Group1, Group2, Group3) |

### Example 2: Get directly assigned principals for a specific administrative unit scope and directory role

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_scope_role"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals(directoryScopeType='administrativeUnit', directoryScopeId ='d0c2e067-9ae9-4dbf-a280-51a51c46f432')
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroledefinition-assignedprincipals-scope-role-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroledefinition-assignedprincipals-scope-role-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_allscopes"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroledefinition-assignedprincipals-allscopes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroledefinition-assignedprincipals-allscopes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
        "displayName": null,
        "userPrincipalName": null
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

### Example 4: Get directly assigned users only for a tenant-wide scope

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_scope"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals(directoryScopeType='tenant')/microsoft.graph.user
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroledefinition-assignedprincipals-scope-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroledefinition-assignedprincipals-scope-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users",
  "value": [
    {
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f",
        "displayName": null,
        "userPrincipalName": null
    }
  ]
}
```

### Example 5: Get directly assigned principals and inline count

The following example gets the directly assigned principals and displays an inline count.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroledefinition_assignedprincipals_minimumpermission_count"
}
-->
``` http
GET https://graph.microsoft.com/beta/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals?$count=true
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroledefinition-assignedprincipals-minimumpermission-count-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroledefinition-assignedprincipals-minimumpermission-count-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.count": 4,
  "value": [
    {
        "@odata.type": "#microsoft.graph.user",
        "id": "6c62e70d-f5f5-4b9d-9eea-ed517ed9341f",
        "displayName": null,
        "userPrincipalName": null
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
