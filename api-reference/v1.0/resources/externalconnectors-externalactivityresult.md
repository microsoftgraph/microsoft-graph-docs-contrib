---
title: "externalActivityResult resource type"
description: "Represents the result of processing an externalActivity"
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalActivityResult resource type

Namespace: microsoft.graph.externalConnectors

Represents the result of processing an [externalActivity](../resources/externalconnectors-externalactivity.md). Null if successful.

Inherits from [externalActivity](../resources/externalconnectors-externalactivity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|Error information explaining failure to process external activity.|
|startDateTime|DateTimeOffset|When the particular activity occurred. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md).|
|type|externalConnectors.externalActivityType|The type of activity performed. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md). The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|Represents an identity used to identify who is responsible for the activity. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivityResult",
  "baseType": "microsoft.graph.externalConnectors.externalActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivityResult",
  "type": "String",
  "startDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
