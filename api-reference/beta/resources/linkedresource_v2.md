---
title: "linkedResource_v2 resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# linkedResource_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List linkedResource_v2](../api/linkedresource_v2-list.md)|[linkedResource_v2](../resources/linkedresource_v2.md) collection|Get a list of the [linkedResource_v2](../resources/linkedresource_v2.md) objects and their properties.|
|[Create linkedResource_v2](../api/task-post-linkedresources.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Create a new [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Get linkedResource_v2](../api/linkedresource_v2-get.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Read the properties and relationships of a [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Update linkedResource_v2](../api/linkedresource_v2-update.md)|[linkedResource_v2](../resources/linkedresource_v2.md)|Update the properties of a [linkedResource_v2](../resources/linkedresource_v2.md) object.|
|[Delete linkedResource_v2](../api/linkedresource_v2-delete.md)|None|Deletes a [linkedResource_v2](../resources/linkedresource_v2.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationName|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.linkedResource_v2",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkedResource_v2",
  "webUrl": "String",
  "applicationName": "String",
  "displayName": "String",
  "externalId": "String",
  "id": "String (identifier)"
}
```

