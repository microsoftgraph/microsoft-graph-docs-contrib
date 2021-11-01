---
title: "retentionEventStatus resource type"
description: "**TODO: Add Description**"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionEventStatus resource type

Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|location|String|Location in the workload|
|status|retentionEventStatusType|Is the event completed. The possible values are: `none`, `inProcessing`, `failed`, `success`.|
|statusInformation|String|Additional infroamtion about the status|
|workload|String|Workload being targetted by the event|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recordsManagement.retentionEventStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionEventStatus",
  "workload": "String",
  "location": "String",
  "status": "String",
  "statusInformation": "String"
}
```

