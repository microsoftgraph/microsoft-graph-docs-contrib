---
title: "List subscribedSkus"
description: "Retrieve the list of commercial subscriptions that an organization has acquired."
ms.localizationpriority: medium
author: "SumitParikh"
ms.prod: "directory-management"
doc_type: apiPageType
---

# List subscribedSkus

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of commercial subscriptions that an organization has acquired. For the mapping of license names as displayed on the Azure portal or the Microsoft 365 admin center against their Microsoft Graph **skuId** and **skuPartNumber** properties, see [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Organization.Read.All, Directory.Read.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Organization.Read.All, Directory.Read.All, Organization.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /subscribedSkus
```
## Optional query parameters

This method supports only the `$select` [OData query parameter](/graph//query-parameters) to help customize the response. It does not support `$filter`.

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [subscribedSku](../resources/subscribedsku.md) objects in the response body.
## Example
### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_subscribedskus"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/subscribedSkus
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-subscribedskus-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-subscribedskus-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-subscribedskus-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-subscribedskus-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-subscribedskus-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-subscribedskus-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscribedSku",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "capabilityStatus": "Enabled",
      "consumedUnits": 20,
      "prepaidUnits": {
        "enabled": 20,
        "suspended": 0,
        "warning": 0
      },
      "servicePlans": [
        {
          "servicePlanId": "113feb6c-3fe4-4440-bddc-54d774bf0318",
          "servicePlanName": "EXCHANGE_S_FOUNDATION",
          "provisioningStatus": "Success",
          "appliesTo": "Company"
        }
      ],
      "skuId": "b05e124f-c7cc-45a0-a6aa-8cf78c946968",
      "skuPartNumber": "EMSPREMIUM"
    }
  ]
}
```

## See also

+ [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List subscribedSkus",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


