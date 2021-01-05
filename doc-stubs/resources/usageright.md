---
title: "UsageRight resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# UsageRight resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List UsageRights](../api/usageright-list.md)|[UsageRight](../resources/usageright.md) collection|Get a list of the [UsageRight](../resources/usageright.md) objects and their properties.|
|[Create UsageRight](../api/usageright-post-usagerights.md)|[UsageRight](../resources/usageright.md)|Create a new [UsageRight](../resources/usageright.md) object.|
|[Get UsageRight](../api/usageright-get.md)|[UsageRight](../resources/usageright.md)|Read the properties and relationships of an [UsageRight](../resources/usageright.md) object.|
|[Update UsageRight](../api/usageright-update.md)|[UsageRight](../resources/usageright.md)|Update the properties of an [UsageRight](../resources/usageright.md) object.|
|[Delete UsageRight](../api/usageright-delete.md)|None|Deletes an [UsageRight](../resources/usageright.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|serviceIdentifier|String|**TODO: Add Description**|
|state|usageRightState|**TODO: Add Description**. Possible values are: `active`, `inactive`, `warning`, `suspended`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.UsageRight",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.UsageRight",
  "id": "String (identifier)",
  "catalogId": "String",
  "serviceIdentifier": "String",
  "state": "String"
}
```

