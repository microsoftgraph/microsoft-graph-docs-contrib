---
title: "externalActivityBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externalActivityBase resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalActivityBases](../api/externalconnectors-externalactivitybase-list.md)|[microsoft.graph.externalConnectors.externalActivityBase](../resources/externalconnectors-externalactivitybase.md) collection|Get a list of the [externalActivityBase](../resources/externalconnectors-externalactivitybase.md) objects and their properties.|
|[Create externalActivityBase](../api/externalconnectors-externalitem-post-activities.md)|[microsoft.graph.externalConnectors.externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|Create a new [externalActivityBase](../resources/externalconnectors-externalactivitybase.md) object.|
|[Get externalActivityBase](../api/externalconnectors-externalactivitybase-get.md)|[microsoft.graph.externalConnectors.externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|Read the properties and relationships of an [externalActivityBase](../resources/externalconnectors-externalactivitybase.md) object.|
|[Update externalActivityBase](../api/externalconnectors-externalactivitybase-update.md)|[microsoft.graph.externalConnectors.externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|Update the properties of an [externalActivityBase](../resources/externalconnectors-externalactivitybase.md) object.|
|[Delete externalActivityBase](../api/externalconnectors-externalactivitybase-delete.md)|None|Deletes an [externalActivityBase](../resources/externalconnectors-externalactivitybase.md) object.|
|[List identity](../api/externalconnectors-externalactivitybase-list-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md) collection|Get the identity resources from the performedBy navigation property.|
|[Add identity](../api/externalconnectors-externalactivitybase-post-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Add performedBy by posting to the performedBy collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|type|externalActivityType|**TODO: Add Description**.The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivityBase",
  "type": "String",
  "startDateTime": "String (timestamp)"
}
```

