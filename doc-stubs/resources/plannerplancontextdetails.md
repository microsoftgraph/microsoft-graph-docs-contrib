---
title: "plannerPlanContextDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerPlanContextDetails resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customLinkText|String|**TODO: Add Description**|
|displayLinkType|plannerPlanContextType|**TODO: Add Description**. Possible values are: `teamsTab`, `sharePointPage`, `meetingNotes`, `other`, `unknownFutureValue`.|
|url|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContextDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanContextDetails",
  "url": "String",
  "customLinkText": "String",
  "displayLinkType": "String"
}
```

