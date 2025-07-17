---
title: "Get appRoleAssignment"
description: "Read the properties and relationships of an appRoleAssignment object."
author: "psignoret"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 10/15/2024
---

# Get appRoleAssignment
Namespace: microsoft.graph

Read the properties and relationships of an [appRoleAssignment](../resources/approleassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following table shows the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| [group](../resources/group.md) | Group.Read.All | Not supported. | Group.Read.All |
| [servicePrincipal](../resources/serviceprincipal.md) | Application.Read.All | Not supported. | Application.Read.All |
| [user](../resources/user.md) | User.Read | Not supported. | Directory.Read.All |

[!INCLUDE [rbac-approleassignments-apis-read](../includes/rbac-for-apis/rbac-approleassignments-apis-read.md)]

### Other supported permissions

The following higher privileged permissions are supported by each resource:
- Groups:
  - Delegated and application permissions: Directory.Read.All, AppRoleAssignment.ReadWrite.All, Directory.ReadWrite.All
- Users: 
  - Delegated permissions: User.ReadBasic.All, Directory.Read.All, AppRoleAssignment.ReadWrite.All
  - Application permissions: Directory.Read.All, AppRoleAssignment.ReadWrite.All
- Service principals:
  - Delegated permissions: Directory.Read.All, Application.ReadWrite.All, Directory.ReadWrite.All
  - Application permissions: Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All

## HTTP request

To get details of an appRole granted to a service principal:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{client-serviceprincipal-id}/appRoleAssignments/{appRoleAssignment-id}
GET /servicePrincipals(appId='{client-servicePrincipal-appId}')/appRoleAssignments/{appRoleAssignment-id}
```

To get details of an appRole granted to a user, group, or client service principal for the given resource service principal:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals(appId='{resource-servicePrincipal-appId}')/appRoleAssignedTo/{appRoleAssignment-id}
GET /servicePrincipals/{resource-serviceprincipal-id}/appRoleAssignedTo/{appRoleAssignment-id}
```

To get details of an appRole granted to a group:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{group-id}/appRoleAssignments/{appRoleAssignment-id}
```

To get details of an appRole granted to a user:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{user-id}/appRoleAssignments/{appRoleAssignment-id}
GET /me/appRoleAssignments/{appRoleAssignment-id}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [appRoleAssignment](../resources/approleassignment.md) object in the response body.

## Examples

### Example 1: Get details of an app role granted to a user, group, or client service principal for the given resource service principal

#### Request
The following request queries the resource service principal to get details of an app role it has granted to a client that can be a user, group, or client service principal in the tenant.
<!-- {
  "blockType": "request",
  "name": "get_approleassignment_v1_e1",
  "sampleKeys": ["00000003-0000-0000-c000-000000000000", "ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='00000003-0000-0000-c000-000000000000')/appRoleAssignedTo/ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA
```


#### Response
The following example shows the response. It shows a client service principal named **Postman** has been granted an app role with the ID **df021288-bdef-4463-88db-98f22de89214** which is the *User.Read.All* application permission, for the resource service principal named **Microsoft Graph**.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('00000003-0000-0000-c000-000000000000')/appRoleAssignedTo/$entity",
    "id": "ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA",
    "deletedDateTime": null,
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
    "createdDateTime": "2023-02-24T17:01:47.0988029Z",
    "principalDisplayName": "Postman",
    "principalId": "2a8f9e7a-af01-413a-9592-c32ec0e5c1a7",
    "principalType": "ServicePrincipal",
    "resourceDisplayName": "Microsoft Graph",
    "resourceId": "7408235b-7540-4850-82fe-a5f15ed019e2"
}
```

### Example 2: Get details of an app role granted to a service principal

#### Request
The following request queries the client service principal to get details of an app role granted to it. In this instance, the app role represents the application permission.
<!-- {
  "blockType": "request",
  "name": "get_approleassignment_serviceprincipal_v1_e2",
  "sampleKeys": ["ceb96a54-de95-49a0-b38c-c55263fcf421", "ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='ceb96a54-de95-49a0-b38c-c55263fcf421')/appRoleAssignments/ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA
```


#### Response
The following example shows the response. It shows a client service principal named **Postman** has been granted an app role with the ID **df021288-bdef-4463-88db-98f22de89214** which is the *User.Read.All* application permission, for the resource service principal named **Microsoft Graph**.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('ceb96a54-de95-49a0-b38c-c55263fcf421')/appRoleAssignments/$entity",
    "id": "ep6PKgGvOkGVksMuwOXBpxV3dkHvwM1ElSjMUzZtaIA",
    "deletedDateTime": null,
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
    "createdDateTime": "2023-02-24T17:01:47.0988029Z",
    "principalDisplayName": "Postman",
    "principalId": "2a8f9e7a-af01-413a-9592-c32ec0e5c1a7",
    "principalType": "ServicePrincipal",
    "resourceDisplayName": "Microsoft Graph",
    "resourceId": "7408235b-7540-4850-82fe-a5f15ed019e2"
}
```

### Example 3: Get details of an app role granted to the signed-in user

#### Request
The following request queries the signed-in user's appRoleAssignments.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approleassignment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/appRoleAssignments/Lo6gEKI-4EyAy9X91LBepo6Aq0Rt6QxBjWRl76txk8I
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approleassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-approleassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approleassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approleassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approleassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approleassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-approleassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-approleassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response. It shows the signed-in user has the default app role for a resource service principal named *Postman*.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6')/appRoleAssignments/$entity",
    "id": "Lo6gEKI-4EyAy9X91LBepo6Aq0Rt6QxBjWRl76txk8I",
    "deletedDateTime": null,
    "appRoleId": "00000000-0000-0000-0000-000000000000",
    "createdDateTime": "2022-09-08T17:43:57.8423817Z",
    "principalDisplayName": "MOD Administrator",
    "principalId": "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6",
    "principalType": "User",
    "resourceDisplayName": "Postman",
    "resourceId": "2a8f9e7a-af01-413a-9592-c32ec0e5c1a7"
}
```
