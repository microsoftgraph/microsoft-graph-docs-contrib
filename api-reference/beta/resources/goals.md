---
title: "goals resource type"
description: "Represents the collection of APIs for Goals Export Jobs."
author: "ishatyagiit"
ms.localizationpriority: medium
ms.prod: "employee-goals"
doc_type: resourcePageType
---

# goals resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the collection of APIs for Goals Export Jobs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List exportJobs](../api/goals-list-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md) collection|Get the goalsExportJob resources from the exportJobs navigation property.|
|[Create goalsExportJob](../api/goals-post-exportjobs.md)|[goalsExportJob](../resources/goalsexportjob.md)|Create a new goalsExportJob object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[goalsExportJob](../resources/goalsexportjob.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.goals",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.goals"
}
```

