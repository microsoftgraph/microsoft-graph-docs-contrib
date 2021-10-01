---
title: "Create externalItem"
description: "Create a new externalItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create externalItem
Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [externalItem](../resources/externalconnectors-externalitem.md) object.

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
POST /connections/{connectionsId}/items
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalItem](../resources/externalconnectors-externalitem.md) object.

The following table shows the properties that are required when you create the [externalItem](../resources/externalconnectors-externalitem.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/externalconnectors-entity.md)|
|acl|[microsoft.graph.externalConnectors.acl](../resources/externalconnectors-acl.md) collection|**TODO: Add Description**|
|content|[microsoft.graph.externalConnectors.externalItemContent](../resources/externalconnectors-externalitemcontent.md)|**TODO: Add Description**|
|previews|[microsoft.graph.externalConnectors.externalItemPreview](../resources/externalconnectors-externalitempreview.md) collection|**TODO: Add Description**|
|properties|[microsoft.graph.externalConnectors.properties](../resources/externalconnectors-properties.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [externalItem](../resources/externalconnectors-externalitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_externalitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/connections/{connectionsId}/items
Content-Type: application/json
Content-length: 476

{
  "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

