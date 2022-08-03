---
title: "externalActivityBase resource type"
description: "Represents the basetype for a user interaction with an external item."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalActivityBase resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base type for a user interaction with an [externalitem](../resources/externalconnectors-externalitem.md).

This is an abstract type. Base type of [externalActivity](../resources/externalconnectors-externalactivity.md) and [externalActivityResult](../resources/externalconnectors-externalactivityresult.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|When the particular activity occurred.|
|type|externalConnectors.externalActivityType|The type of activity performed. The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|Represents an identity used to identify who is responsible for the activity.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
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
