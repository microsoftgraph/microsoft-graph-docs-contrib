---
title: "alertFrequencyPoint resource type"
description: "Represents a summary of all alert severities in a specific day."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# alertFrequencyPoint resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of all [alert](../resources/networkaccess-alert.md) severities in a specific day detected by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|highSeverityCount|Int64|Total number of high alert severity. Required.|
|informationalSeverityCount|Int64|Total number of informational alert severity. Required.|
|lowSeverityCount|Int64|Total number of low alert severity. Required.|
|mediumSeverityCount|Int64|Total number of medium alert severity. Required.|
|timeStampDateTime|DateTimeOffset|The time bucket for counting the alert severities. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.alertFrequencyPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.alertFrequencyPoint",
  "timeStampDateTime": "String (timestamp)",
  "highSeverityCount": "Integer",
  "mediumSeverityCount": "Integer",
  "lowSeverityCount": "Integer",
  "informationalSeverityCount": "Integer"
}
```
