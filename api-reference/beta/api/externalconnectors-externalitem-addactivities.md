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

Append additional instances of [externalActivity](../resources/externalconnectors-externalactivity.md) objects on an [externalitem](../resources/externalconnectors-externalitem.md).

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported                               |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | ExternalItem.ReadWrite.OwnedBy, ExternalItem.ReadWrite.All                 |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /connections/{connectionsId}/items/{externalItemId}/addActivities
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.externalConnectors.externalActivity](../resources/externalconnectors-externalactivity.md) collection|Collection of activities involving an **externalItem**.|



## Response

If successful, this action returns a `200 OK` response code and a collection of [externalConnectors.externalActivityResult](../resources/externalconnectors-externalactivityresult.md) objects in the response body.

If a `207` response is returned, this indicates that only some of the added **externalActivity** instances were successfully processed. The caller should inspect the response payload, looking at the error field for each **externalActivityResult** to determine why the **externalActivity** instance was not processed and what action can be taken. If the error field is null, that indicates a successful **externalActivityResult**.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "externalitemthis.addactivities"
}
-->
``` http
POST https://graph.microsoft.com/beta/connections/{connectionsId}/items/{externalItemId}/addActivities
Content-Type: application/json
Content-length: 190

{
  "activities": [
    {
      "@odata.type": "#microsoft.graph.externalConnectors.externalActivity",
      "type": "String",
      "startDateTime": "String (timestamp)"
    }
  ]
}
```


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
      "type": "String",
      "startDateTime": "String (timestamp)",
      "error": {
        "@odata.type": "microsoft.graph.publicError"
      }
    }
  ]
}
```
