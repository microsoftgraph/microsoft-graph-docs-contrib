---
title: "synchronizationQuarantine resource type"
description: "Provides information about the quarantine state of a synchronizationJob."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# synchronizationQuarantine resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information about the quarantine state of a [synchronizationJob](synchronization-synchronizationjob.md).

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|currentBegan|DateTimeOffset|Date and time when the quarantine was last evaluated and imposed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|nextAttempt|DateTimeOffset|Date and time when the next attempt to re-evaluate the quarantine will be made. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|reason|quarantineReason|A code that signifies why the quarantine was imposed. The possible values are: `EncounteredBaseEscrowThreshold`, `EncounteredTotalEscrowThreshold`, `EncounteredEscrowProportionThreshold`, `EncounteredQuarantineException`, `Unknown`, `QuarantinedOnDemand`, `TooManyDeletes`, `IngestionInterrupted`.|
|seriesBegan|DateTimeOffset|Date and time when the quarantine was first imposed in this series (a series starts when a quarantine is first imposed, and is reset as soon as the quarantine is lifted). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|seriesCount|Int64|Number of times in this series the quarantine was re-evaluated and left in effect (a series starts when quarantine is first imposed, and is reset as soon as quarantine is lifted).|
|error|[synchronizationError](synchronization-synchronizationerror.md)|Describes the error(s) that occurred when putting the synchronization job into quarantine.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationQuarantine"
}-->

```json
{
  "error": {
    "@odata.type": "microsoft.graph.synchronizationError"
  },
  "currentBegan": "String (timestamp)",
  "nextAttempt": "String (timestamp)",
  "reason": "String",
  "seriesBegan": "String (timestamp)",
  "seriesCount": "Integer"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationQuarantine resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


