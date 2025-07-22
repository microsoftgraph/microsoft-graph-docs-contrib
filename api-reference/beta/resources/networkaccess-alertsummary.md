---
title: "alertSummary resource type"
description: "Represents a summary of a specific alert severity and alert type."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# alertSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of a specific [alert](../resources/networkaccess-alert.md) severity and type detected by Global Secure Access.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertType|microsoft.graph.networkaccess.alertType|The type of the alerts. Required. The possible values are: `unhealthyRemoteNetworks`, `unhealthyConnectors`, `deviceTokenInconsistency`, `crossTenantAnomaly`, `suspiciousProcess`, `threatIntelligenceTransactions`, `unknownFutureValue`, `webContentBlocked`, `malware`, `patientZero`, `dlp`, `fallback`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `webContentBlocked` , `malware` , `patientZero` , `dlp` , `fallback`.|
|count|Int64|Total number of alerts with this specific severity and type. Required.|
|severity|microsoft.graph.networkaccess.alertSeverity|The severity of the alerts. Required. The possible values are: `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.alertSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.alertSummary",
  "severity": "String",
  "alertType": "String",
  "count": "Integer"
}
```
