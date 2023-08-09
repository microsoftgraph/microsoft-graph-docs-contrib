---
title: "externalItem: addActivities"
description: "Append additional instances of externalActivity on an externalitem."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalItem: addActivities

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Append additional instances of [externalActivity](../resources/externalconnectors-externalactivity.md) objects on an [externalItem](../resources/externalconnectors-externalitem.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                |
|:---------------------------------------|:-----------------------------------------------------------|
| Delegated (work or school account)     | Not supported.                                             |
| Delegated (personal Microsoft account) | Not supported.                                             |
| Application                            | ExternalItem.ReadWrite.OwnedBy, ExternalItem.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST external/connections/{connectionsId}/items/{externalItemId}/addActivities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.externalConnectors.externalActivity](../resources/externalconnectors-externalactivity.md) collection|Collection of activities that involve an **externalItem**.|



## Response

If successful, this action returns a `200 OK` response code and a collection of [microsoft.graph.externalConnectors.externalActivityResult](../resources/externalconnectors-externalactivityresult.md) objects in the response body.

A `207 Multi-Status` response code indicates that only some of the added **externalActivity** instances were successfully processed. The caller should inspect the response payload, looking at the error field for each **externalActivityResult** to determine why the **externalActivity** instance was not processed and what action can be taken. A `null` **error** property indicates a successful **externalActivityResult**.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "externalitemthis.addactivities",
  "sampleKeys": ["contosohr", "TSP228082938"]
}
-->
``` http
POST https://graph.microsoft.com/beta/external/connections/contosohr/items/TSP228082938/addActivities
Content-Type: application/json
Content-length: 190

{
  "activities": [
    {
      "@odata.type": "#microsoft.graph.externalConnectors.externalActivity",
      "type": "created",
      "startDateTime": "2021-04-06T18:04:31.033Z",
      "performedBy": {
        "type": "user",
        "id": "1f0c997e-99f7-43f1-8cca-086f8d42be8d"
      }
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/externalitemthisaddactivities-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/externalitemthisaddactivities-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/externalitemthisaddactivities-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/externalitemthisaddactivities-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/externalitemthisaddactivities-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/externalitemthisaddactivities-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/externalitemthisaddactivities-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalConnectors.externalActivityResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.externalConnectors.externalActivityResult",
      "type": "created",
      "startDateTime": "2021-04-06T18:04:31.033Z",
      "error": null
    }
  ]
}
```
