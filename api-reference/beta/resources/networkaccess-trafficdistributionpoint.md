---
title: "trafficDistributionPoint resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# trafficDistributionPoint resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|internetAccessTrafficCount|Int64|**TODO: Add Description**|
|microsoft365AccessTrafficCount|Int64|**TODO: Add Description**|
|privateAccessTrafficCount|Int64|**TODO: Add Description**|
|timeStampDateTime|DateTimeOffset|**TODO: Add Description**|
|totalTrafficCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.trafficDistributionPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.trafficDistributionPoint",
  "timeStampDateTime": "String (timestamp)",
  "totalTrafficCount": "Integer",
  "microsoft365AccessTrafficCount": "Integer",
  "privateAccessTrafficCount": "Integer",
  "internetAccessTrafficCount": "Integer"
}
```

