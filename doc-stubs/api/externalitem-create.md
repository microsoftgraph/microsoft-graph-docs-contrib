---
title: "Create externalItem"
description: "Create a new externalItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create externalItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [externalItem](../resources/externalitem.md) object.

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
POST /external/connections/{externalConnectionId}/items
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalItem](../resources/externalitem.md) object.

The following table shows the properties that are required when you create the [externalItem](../resources/externalitem.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|acl|[acl](../resources/acl.md) collection|**TODO: Add Description**|
|content|[externalItemContent](../resources/externalitemcontent.md)|**TODO: Add Description**|
|properties|[properties](../resources/properties.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [externalItem](../resources/externalitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_externalitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/connections/{externalConnectionId}/items
Content-Type: application/json
Content-length: 284

{
  "@odata.type": "#microsoft.graph.externalItem",
  "acl": [
    {
      "@odata.type": "microsoft.graph.acl"
    }
  ],
  "content": {
    "@odata.type": "microsoft.graph.externalItemContent"
  },
  "properties": {
    "@odata.type": "microsoft.graph.properties"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalItem",
  "id": "de4395ed-95ed-de43-ed95-43deed9543de",
  "acl": [
    {
      "@odata.type": "microsoft.graph.acl"
    }
  ],
  "content": {
    "@odata.type": "microsoft.graph.externalItemContent"
  },
  "properties": {
    "@odata.type": "microsoft.graph.properties"
  }
}
```

