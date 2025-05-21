---
title: "errorDetail resource type"
description: "The errorDetails allow the admins to get details of errors found during a configurationMonitor run or a configurationSnapshotJob."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# errorDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The errorDetails allow the admins to get details of errors found during a configurationMonitor run or a configurationSnapshotJob. These details help admins figure out the issues. Once the admin fixes these issues, the monitor runs and snapshot jobs run will become successful.
 
The admins use $expand to get errorDetails in configurationMonitorResults API and configurationSnapshotJob API.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|errorMessage|String|The message describing the error for the admin to take action|
|resourceInstanceName|String|The resource type identifier|
|resourceType|String|Name of the resourceType|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.errorDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.errorDetail",
  "resourceType": "String",
  "resourceInstanceName": "String",
  "errorMessage": "String"
}
```

