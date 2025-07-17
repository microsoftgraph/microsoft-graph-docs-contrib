---
title: "List delegatedAdminCustomers"
description: "Get a list of the delegatedAdminCustomer objects and their properties."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: apiPageType
ms.date: 04/04/2024
---

# List delegatedAdminCustomers
Namespace: microsoft.graph

Get a list of the [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantrelationship_list_delegatedadmincustomers" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantrelationship-list-delegatedadmincustomers-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminCustomers
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, `$orderby`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response.

`$top` supports up to 300 objects.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) objects in the response body.

Each **delegatedAdminCustomer** object contains an **@odata.etag** property as per RFC2616.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedadmincustomer"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationships/delegatedAdminCustomers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadmincustomer-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-delegatedadmincustomer-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadmincustomer-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadmincustomer-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadmincustomer-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadmincustomer-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-delegatedadmincustomer-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegatedadmincustomer-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminCustomer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/tenantRelationships/$metadata#delegatedAdminCustomers",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminCustomer",
      "@odata.etag": "W/\"JyIxODAwMTMzZi0wMDAwLTAyMDAtMDAwMC02MTNjMGFhZTAwMDAiJw==\"",
      "id": "4fdbff88-9d6b-42e0-9713-45c922ba8001",
      "tenantId": "4fdbff88-9d6b-42e0-9713-45c922ba8001",
      "displayName": "Contoso Inc"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminCustomer",
      "@odata.etag": "W/\"JyIwMDAwMTEwMS0wMDAwLTAyMDAtMDAwMC02MDI1OTQyMjAwMDAiJw==\"",
      "id": "1c0fa218-5dec-49db-8247-cfa457af8116",
      "tenantId": "1c0fa218-5dec-49db-8247-cfa457af8116",
      "displayName": "Contoso subsidiary Inc"
    }
  ]
}
```

