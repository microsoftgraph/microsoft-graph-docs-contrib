---
title: "usageProfilingPoint resource type"
description: "Represents a data point with traffic count statistics for different access types in Global Secure Access."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# usageProfilingPoint resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a data point with traffic count statistics for different access types in Global Secure Access at a specific point in time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|internetAccessTrafficCount|Int64|The count of traffic requests directed to general internet destinations.|
|microsoft365AccessTrafficCount|Int64|The count of traffic requests directed to Microsoft 365 services.|
|microsoftAccessTrafficCount|Int64|The count of traffic requests directed to Microsoft services excluding Microsoft 365.|
|privateAccessTrafficCount|Int64|The count of traffic requests directed to internal private network destinations.|
|timeStampDateTime|DateTimeOffset|The date and time of this data point.|
|totalTrafficCount|Int64|The total count of all traffic requests across all access types.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.usageProfilingPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.usageProfilingPoint",
  "timeStampDateTime": "String (timestamp)",
  "totalTrafficCount": "Integer",
  "microsoft365AccessTrafficCount": "Integer",
  "privateAccessTrafficCount": "Integer",
  "internetAccessTrafficCount": "Integer",
  "microsoftAccessTrafficCount": "Integer"
}
```