---
title: "subjectSummary resource type"
description: "A summary of subject processing results for a specified time period. This summary allows the administrator to get a quick overview based on counts."
author: "masonwolff"
ms.date: 07/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# subjectSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A summary of subject processing results for a specified time period. This summary allows the administrator to get a quick overview based on counts. It's returned by the [summary](../api/identitygovernance-subjectprocessingresult-summary.md) function on a collection of [subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) objects.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedSubjects|Int32|The number of subjects with at least one failed task in a subject summary.|
|failedTasks|Int32|The number of failed tasks for subjects in a subject summary.|
|successfulSubjects|Int32|The number of subjects where all tasks succeeded in a subject summary.|
|totalSubjects|Int32|The total number of subjects in a subject summary.|
|totalTasks|Int32|The total tasks of subjects in a subject summary.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.subjectSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.subjectSummary",
  "failedSubjects": "Integer",
  "failedTasks": "Integer",
  "successfulSubjects": "Integer",
  "totalSubjects": "Integer",
  "totalTasks": "Integer"
}
```
