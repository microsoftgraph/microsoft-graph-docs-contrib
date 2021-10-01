---
title: "Get externalItem"
description: "Read the properties and relationships of an externalItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get externalItem
Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externalItem](../resources/externalconnectors-externalitem.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /connections/{connectionsId}/items/{externalItemId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externalItem](../resources/externalconnectors-externalitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_externalitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/connections/{connectionsId}/items/{externalItemId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.externalItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
    "id": "279a0aad-0aad-279a-ad0a-9a27ad0a9a27",
    "acl": [
      {
        "@odata.type": "microsoft.graph.externalConnectors.acl"
      }
    ],
    "content": {
      "@odata.type": "microsoft.graph.externalConnectors.externalItemContent"
    },
    "previews": [
      {
        "@odata.type": "microsoft.graph.externalConnectors.externalItemPreview"
      }
    ],
    "properties": {
      "@odata.type": "microsoft.graph.externalConnectors.properties"
    }
  }
}
```

