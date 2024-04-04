---
title: "virtualEndpoint: retrieveScopedPermissions"
description: "Get the permissions and corresponding scope IDs for which the authenticated user has access."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# virtualEndpoint: retrieveScopedPermissions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the permissions and corresponding scope IDs for which the authenticated user has access.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_retrievescopedpermissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-retrievescopedpermissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [cloudPcScopedPermission](../resources/cloudpcscopedpermission.md) objects in the response body.
This API supports filter with permission, when no filter, this function returns all permissions and scope Tag IDs of the authenticated user.

## Optional query parameters
This method supports the $filter OData query parameter to customize the response. If the $filter parameter is not included, the function returns all permissions and scope IDs of the authenticated user.

## Examples

### Example 1: Get all the permissions and scope IDs of the authenticated user
The following example shows a request without the `$filter` query to get the permissions and scope IDs of the authenticated user. 

#### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions1"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualendpoint-retrievescopedpermissions1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/virtualendpoint-retrievescopedpermissions1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualendpoint-retrievescopedpermissions1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualendpoint-retrievescopedpermissions1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualendpoint-retrievescopedpermissions1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualendpoint-retrievescopedpermissions1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/virtualendpoint-retrievescopedpermissions1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualendpoint-retrievescopedpermissions1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 4,
    "value": [
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Create",
            "scopeIds": ["1"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Read",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Assign",
            "scopeIds": ["1"]
        }
    ]
}
```

### Example 2: Get a filtered list of permissions and scope IDs of the authenticated user
The following example shows a request with the specific `$filter` query to get a list of permissions and scope IDs of the authenticated user. 

#### Request

The following example shows a request with a filter.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions2"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions?$filter=permission in ('Microsoft.CloudPC/ProvisioningPolicies/Update','Microsoft.CloudPC/ProvisioningPolicies/Create')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualendpoint-retrievescopedpermissions2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/virtualendpoint-retrievescopedpermissions2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualendpoint-retrievescopedpermissions2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualendpoint-retrievescopedpermissions2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualendpoint-retrievescopedpermissions2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualendpoint-retrievescopedpermissions2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/virtualendpoint-retrievescopedpermissions2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualendpoint-retrievescopedpermissions2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 2,
    "value": [
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1","2"]
        },
        {
            "permission": "Microsoft.CloudPC/ProvisioningPolicies/Update",
            "scopeIds": ["1"]
        }
    ]
}
```

### Example 3: No scope IDs are returned

#### Request

When the signed-in user has the Microsoft Entra Global admin role, the Windows 365 admin role, or the Intune admin role assigned by Microsoft Entra ID, the returned permission is *\**, and no scope IDs are returned. In these cases, queries aren't supported.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualendpoint_retrieveScopedPermissions3"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/retrieveScopedPermissions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualendpoint-retrievescopedpermissions3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/virtualendpoint-retrievescopedpermissions3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualendpoint-retrievescopedpermissions3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualendpoint-retrievescopedpermissions3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualendpoint-retrievescopedpermissions3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualendpoint-retrievescopedpermissions3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/virtualendpoint-retrievescopedpermissions3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualendpoint-retrievescopedpermissions3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.cloudPcScopedPermission)",
    "@odata.count": 1,
    "value": [
        {
            "permission": "*",
            "scopeIds": []
        }
    ]
}
```
