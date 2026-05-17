---
title: "place: listOperations"
description: "List all existing placeOperation objects."
author: "Dongjing-MSIT"
ms.date: 11/10/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# place: listOperations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all existing [placeOperation](../resources/placeoperation.md) objects. This API doesn't return operation details.

>[!NOTE]
>The following aspects apply when you work with this API:
>- Operations are retained for 15 days from creation.
>- This API has a throttling limit of three calls per second. For more information, see [Microsoft Graph service-specific throttling limits](/graph/throttling-limits).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "place_listoperations" } -->
[!INCLUDE [permissions-table](../includes/permissions/place-listoperations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/listOperations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [placeOperation](../resources/placeoperation.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "placethis.listoperations"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/listOperations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/placethislistoperations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/placethislistoperations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/placethislistoperations-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/placethislistoperations-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/placethislistoperations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/placethislistoperations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/placethislistoperations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.placeOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "15cc23bd-f215-42bf-92ad-bb84fbcd6606",
      "status": "partiallySucceeded",
      "progress": {
        "totalPlaceCount": 3,
        "succeededPlaceCount": 1,
        "failedPlaceCount": 2
      }
    },
    {
      "id": "0f5d3cc5-d1bd-4cba-9b0e-e9ad68527ab5",
      "status": "succeeded",
      "progress": {
        "totalPlaceCount": 9,
        "succeededPlaceCount": 9,
        "failedPlaceCount": 0
      }
    }
  ]
}
```
