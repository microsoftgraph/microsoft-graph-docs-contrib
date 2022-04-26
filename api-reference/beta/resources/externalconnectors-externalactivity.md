---
title: "externalActivity resource type"
description: "Represents activity done involving external items."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---
---

# externalActivity resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents activity done involving external items.


Inherits from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|When the particular activity occurred. Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).|
|type|externalConnectors.externalActivityType|The type of activity performed. Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|Represents an identity used to identify who is responsible for the activity. Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivity",
  "baseType": "microsoft.graph.externalConnectors.externalActivityBase",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivity",
  "type": "String",
  "startDateTime": "String (timestamp)"
}
```
