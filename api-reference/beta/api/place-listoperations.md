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

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "place-listoperations-permissions"
}
-->
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
<!-- {
  "blockType": "request",
  "name": "placethis.listoperations"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/listOperations
```

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
		},
  ]
}
```
