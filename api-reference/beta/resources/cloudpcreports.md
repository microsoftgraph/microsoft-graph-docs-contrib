---
title: "cloudPcReports resource type"
description: "The reports entity indicates the Windows 365 product related reports"
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcReports resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC related reports, includes Windows 365 Cloud PC remote connections related report.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getDailyAggregatedRemoteConnectionReports](../api/cloudpcreports-getdailyaggregatedremoteconnectionreports.md)|Stream|Get the daily aggregated remote connection reports like round trip time, available bandwidth and so on in a given period.|
|[getRealTimeRemoteConnectionLatency](../api/cloudpcreports-getrealtimeremoteconnectionlatency.md)|Stream|Get the real time remote connection latency reports like current round trip time, available bandwidth and so on of a Cloud PC.|
|[getRealTimeRemoteConnectionStatus](../api/cloudpcreports-getrealtimeremoteconnectionstatus.md)|Stream|Get the real time remote connection status reports like sign in status, days since last use of a Cloud PC.|
|[getRemoteConnectionHistoricalReports](../api/cloudpcreports-getremoteconnectionhistoricalreports.md)|Stream|Get a Cloud PC's remote connection historical reports like signInDateTime, signOutDateTime and usageInHour in a given period.|
|[getTotalAggregatedRemoteConnectionReports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the total aggregated remote connection reports like usage, daysSinceLastUse and so on in a given period.|


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

