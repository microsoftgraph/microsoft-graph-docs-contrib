---
title: "cloudPcReports resource type"
description: "Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcReports resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getDailyAggregatedRemoteConnectionReports](../api/cloudpcreports-getdailyaggregatedremoteconnectionreports.md)|Stream|Get the daily aggregated remote connection reports like round trip time and available bandwidth in a given period.|
|[getRealTimeRemoteConnectionLatency](../api/cloudpcreports-getrealtimeremoteconnectionlatency.md)|Stream|Get the real-time remote connection latency reports like current round trip time and available bandwidth of a Cloud PC.|
|[getRealTimeRemoteConnectionStatus](../api/cloudpcreports-getrealtimeremoteconnectionstatus.md)|Stream|Get the real-time remote connection status reports like sign in status, or days since last use of a Cloud PC.|
|[getRemoteConnectionHistoricalReports](../api/cloudpcreports-getremoteconnectionhistoricalreports.md)|Stream|Get a Cloud PC's remote connection historical reports, such as **signInDateTime**, **signOutDateTime**, or **usageInHour**, in a given period.|
|[getTotalAggregatedRemoteConnectionReports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the total aggregated remote connection reports, like usage and **daysSinceLastUse**, in a given period.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[cloudPcExportJob](../resources/cloudpcexportjob.md) collection|The export jobs created for downloading reports.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcReports",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReports",
  "id": "String (identifier)"
}
```

