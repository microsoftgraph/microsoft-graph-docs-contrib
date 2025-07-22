---
title: "alertSeveritySummary resource type"
description: "Represents a summary of a specific alert severity."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# alertSeveritySummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of a specific [alert](../resources/networkaccess-alert.md) severity detected by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int64|Total number of alerts with this specific severity. Required.|
|severity|microsoft.graph.networkaccess.alertSeverity|The severity of the alerts. Required. The possible values are: `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.alertSeveritySummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.alertSeveritySummary",
  "severity": "String",
  "count": "Integer"
}
```
