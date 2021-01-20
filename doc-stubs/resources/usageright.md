---
title: "usageRight resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# usageRight resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List usageRights](../api/usageright-list.md)|[usageRight](../resources/usageright.md) collection|Get a list of the [usageRight](../resources/usageright.md) objects and their properties.|
|[Create usageRight](../api/usageright-create.md)|[usageRight](../resources/usageright.md)|Create a new [usageRight](../resources/usageright.md) object.|
|[Get usageRight](../api/usageright-get.md)|[usageRight](../resources/usageright.md)|Read the properties and relationships of an [usageRight](../resources/usageright.md) object.|
|[Update usageRight](../api/usageright-update.md)|[usageRight](../resources/usageright.md)|Update the properties of an [usageRight](../resources/usageright.md) object.|
|[Delete usageRight](../api/usageright-delete.md)|None|Deletes an [usageRight](../resources/usageright.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|serviceIdentifier|String|**TODO: Add Description**|
|state|usageRightState|**TODO: Add Description**. Possible values are: `active`, `inactive`, `warning`, `suspended`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.usageRight",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usageRight",
  "id": "String (identifier)",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

