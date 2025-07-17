---
title: "entitiesSummary resource type"
description: "Represents a summary of entities for Global Secure Access reporting."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# entitiesSummary resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of entities for Global Secure Access reporting.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|The number of devices in the summary. Required.|
|trafficType|microsoft.graph.networkaccess.trafficType|The type of network traffic summarized. Required. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`.|
|userCount|Int64|The number of users in the summary. Required.|
|workloadCount|Int64|The number of workloads in the summary. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.entitiesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.entitiesSummary",
  "trafficType": "String",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "workloadCount": "Integer"
}
```
