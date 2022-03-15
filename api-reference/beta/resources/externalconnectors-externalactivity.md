---
title: "externalActivity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externalActivity resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

***TODO: Add Description***


Inherits from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalActivities](../api/externalconnectors-externalactivity-list.md)|[microsoft.graph.externalConnectors.externalActivity](../resources/externalconnectors-externalactivity.md) collection|Get a list of the [externalActivity](../resources/externalconnectors-externalactivity.md) objects and their properties.|
|[Get externalActivity](../api/externalconnectors-externalactivity-get.md)|[microsoft.graph.externalConnectors.externalActivity](../resources/externalconnectors-externalactivity.md)|Read the properties and relationships of an [externalActivity](../resources/externalconnectors-externalactivity.md) object.|
|[Update externalActivity](../api/externalconnectors-externalactivity-update.md)|[microsoft.graph.externalConnectors.externalActivity](../resources/externalconnectors-externalactivity.md)|Update the properties of an [externalActivity](../resources/externalconnectors-externalactivity.md) object.|
|[Delete externalActivity](../api/externalconnectors-externalactivity-delete.md)|None|Deletes an [externalActivity](../resources/externalconnectors-externalactivity.md) object.|
|[List identity](../api/externalconnectors-externalactivity-list-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md) collection|Get the identity resources from the performedBy navigation property.|
|[Add identity](../api/externalconnectors-externalactivity-post-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Add performedBy by posting to the performedBy collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).|
|type|externalActivityType|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivity",
  "baseType": "microsoft.graph.externalConnectors.externalActivityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivity",
  "type": "String",
  "startDateTime": "String (timestamp)"
}
```

