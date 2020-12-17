---
title: "request resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# request resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List requests](../api/request-list.md)|[request](../resources/request.md) collection|Get a list of the [request](../resources/request.md) objects and their properties.|
|[Create request](../api/request-create.md)|[request](../resources/request.md)|Create a new [request](../resources/request.md) object.|
|[Get request](../api/request-get.md)|[request](../resources/request.md)|Read the properties and relationships of a [request](../resources/request.md) object.|
|[Update request](../api/request-update.md)|[request](../resources/request.md)|Update the properties of a [request](../resources/request.md) object.|
|[Delete request](../api/request-delete.md)|None|Deletes a [request](../resources/request.md) object.|
|[stop](../api/request-stop.md)|None|**TODO: Add Description**|
|[recordDecisions](../api/request-recorddecisions.md)|None|**TODO: Add Description**|
|[List approval](../api/request-list-approval.md)|[approval](../resources/approval.md) collection|Get the approval resources from the approval navigation property.|
|[Create approval](../api/request-post-approval.md)|[approval](../resources/approval.md)|Create a new approval object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.request",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.request",
  "id": "String (identifier)"
}
```

