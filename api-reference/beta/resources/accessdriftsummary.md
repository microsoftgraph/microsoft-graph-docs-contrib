---
title: "accessDriftSummary resource type"
description: "Represents an aggregated view of access drift for a governed resource."
author: "suhanigupta"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessDriftSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregated view of access drift for a governed resource. Each summary captures the drift state for a single resource and drift source combination, including counts of unauthorized and missing assignments.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List accessDriftSummary](../api/accessdriftsummary-list.md)|[accessDriftSummary](../resources/accessdriftsummary.md) collection|Get a list of the accessDriftSummary objects and their properties.|
|[Get accessDriftSummary](../api/accessdriftsummary-get.md)|[accessDriftSummary](../resources/accessdriftsummary.md)|Read the properties and relationships of an accessDriftSummary object.|
|[List details](../api/accessdriftsummary-list-details.md)|[accessDriftDetail](../resources/accessdriftdetail.md) collection|Get the access drift details from the details navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the drift snapshot was created.|
|driftCounts|[driftCounts](../resources/driftcounts.md)|The aggregate counts of unauthorized and missing assignments for this resource.|
|driftSource|[accessDriftSource](../resources/enums.md#accessdriftsource-values)|The comparison system that detected the drift. The possible values are: `entra`, `externalApplication`, `unknownFutureValue`.|
|id|String|The unique identifier for the access drift summary. Inherited from [entity](../resources/entity.md).|
|resource|[driftResourceInfo](../resources/driftresourceinfo.md)|The governed resource associated with this drift summary.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|details|[accessDriftDetail](../resources/accessdriftdetail.md) collection|The collection of access drift details for this summary.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessDriftSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessDriftSummary",
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.driftResourceInfo"},
  "driftSource": "String",
  "driftCounts": {"@odata.type": "microsoft.graph.driftCounts"},
  "createdDateTime": "String (timestamp)"
}
```
