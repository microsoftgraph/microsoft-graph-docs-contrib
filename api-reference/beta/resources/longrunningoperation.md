---
title: "longRunningOperation resource type"
description: "Represents the status of a long-running Microsoft Graph API operation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/19/2024
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a long-running Microsoft Graph API operation.

The following types derive from this object:
- [richLongRunningOperation](richlongrunningoperation.md)
- [attackSimulationOperation](../resources/attacksimulationoperation.md)
- [engagementAsyncOperation](../resources/engagementasyncoperation.md)
- [validateOperation](../resources/industrydata-validateoperation.md)

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/longrunningoperation-get.md)|[longRunningOperation](../resources/longrunningoperation.md) object|Read the properties and relationships of a longRunningOperation object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the operation. |
|lastActionDateTime|DateTimeOffset|The time of the last action in the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|resourceLocation|String| URI of the resource that the operation is performed on. |
|status|longRunningOperationStatus|The status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|statusDetail|String|Details about the status of the operation.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.longRunningOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.longRunningOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String"
}
```

<!-- uuid: 13fa92b1-3b41-498b-aab1-f943464a124f
2018-03-30 10:29:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
