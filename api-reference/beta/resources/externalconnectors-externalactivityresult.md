---
title: "externalActivityResult resource type"
description: "Represents the result of processing an externalActivity."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalActivityResult resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of processing an [externalActivity](../resources/externalconnectors-externalactivity.md). A `null` **error** property in the response object indicates a successful request.

Inherits from [externalActivity](../resources/externalconnectors-externalactivity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|Error information that explains the failure to process an external activity.|
|startDateTime|DateTimeOffset|The date and time when the particular activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md).|
|type|microsoft.graph.externalConnectors.externalActivityType|The type of activity performed. The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Represents an identity used to identify who is responsible for the activity. Inherited from [externalActivity](../resources/externalconnectors-externalactivity.md).|

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
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "startDateTime": "String (timestamp)",
  "type": "String"
}
```
