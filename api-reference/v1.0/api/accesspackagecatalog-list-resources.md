---
title: "List resources"
description: "Retrieve a list of accesspackageresource objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List resources

Namespace: microsoft.graph

Retrieve a list of [accessPackageResource](../resources/accesspackageresource.md) objects in an [accessPackageCatalog](../resources/accesspackagecatalog.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagecatalog_list_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-list-resources-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/catalogs/{id}/resources
```

## Optional query parameters

This method supports OData query parameters to help customize the response. For example, to retrieve the access package resource scopes and environments for each resource, include `$expand=scopes,environment` in the query. To retrieve the available roles of a resource and its scope, include `$expand=roles,scopes`.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResource](../resources/accesspackageresource.md) objects in the response body.

## Examples

### Example 1: List all resources in a catalog

#### Request

The following is an example of the request, using `$expand` to return resource scopes of each resource.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageresources"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{id}/resources?$expand=scopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageresources-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-accesspackageresources-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageresources-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageresources-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageresources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageresources-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageresources-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-accesspackageresources-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "400279ff-8e85-4dcf-b1d6-d3a6be372951",
      "displayName": "Faculty cafeteria ordering",
      "description": "Example application",
      "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
      "scopes": [
          {
              "id": "452d78a7-69a5-482d-a82f-859a5169c55e",
              "displayName": "Root",
              "description": "Root Scope",
              "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
              "originSystem": "AadApplication",
              "isRootScope": true
          }
      ]
    }
  ]
}
```

### Example 2: Retrieve the roles and scopes of a single resource in a catalog


#### Request

The following is an example of the request, using `$expand` to return the roles and scopes of a single resource.  The resource must already be present in the catalog.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageresources2"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{catalogId}/resources?$expand=roles,scopes&$filter=id eq '{resourceId}'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageresources2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-accesspackageresources2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageresources2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageresources2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageresources2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageresources2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageresources2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-accesspackageresources2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "400279ff-8e85-4dcf-b1d6-d3a6be372951",
      "displayName": "Faculty cafeteria ordering",
      "description": "Example application",
      "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
      "roles": [
          {
              "id": "5fc34d75-926c-458e-9967-060691c7f4ae",
              "displayName": "admin",
              "description": "Administrator in the application",
              "originSystem": "AadApplication",
              "originId": "2cab8bf6-3fa2-4cc5-b0a7-a401af9f6197"
           }
      ],
      "scopes": [
          {
              "id": "452d78a7-69a5-482d-a82f-859a5169c55e",
              "displayName": "Root",
              "description": "Root Scope",
              "originId": "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e",
              "originSystem": "AadApplication",
              "isRootScope": true
          }
      ]
    }
  ]
}
```


### Example 3: Retrieve the roles and scopes of a single resource in a catalog by origin ID

#### Request

The following is an example of the request, using `$expand` to return the roles and scopes of a single resource.  The filter uses the `originId` property of the [accessPackageResource](../resources/accesspackageresource.md) to refer to the identifier in the origin system. If the resource in the catalog is based on a [group](../resources/group.md), this value would be the `id` of that group.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageresources3"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{catalogId}/resources?$expand=roles,scopes&$filter=originId eq '0282e19d-bf41-435d-92a4-99bab93af305'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageresources3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-accesspackageresources3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageresources3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageresources3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageresources3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageresources3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageresources3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-accesspackageresources3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResource",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "b16e0e71-17b4-4ebd-a3cd-8a468542e418",
      "displayName": "example group",
      "description": "a group whose members are to be assigned via an access package",
      "originId": "0282e19d-bf41-435d-92a4-99bab93af305",
      "originSystem": "AadGroup",
      "createdDateTime": "2019-09-13T01:06:14.797Z",
      "roles": [
        {
          "id": "748f8431-c7c6-404d-8564-df67aa8cfc5e",
          "displayName": "Member",
          "originSystem": "AadGroup",
          "originId": "Member_0282e19d-bf41-435d-92a4-99bab93af305"
        }
      ],
      "scopes": [
        {
          "id": "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c",
          "displayName": "Root",
          "description": "Root Scope",
          "originId": "0282e19d-bf41-435d-92a4-99bab93af305",
          "originSystem": "AadGroup",
          "isRootScope": true
        }
      ]
    }
  ]
}
```
