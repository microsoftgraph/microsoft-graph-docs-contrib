---
title: "cloudPcReports resource type"
description: "Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcReports resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response. Alternatively, you can use the [cloudPCExportJob](cloudpcexportjob.md) resource and specify a storage account URL to download the specific report.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getActionStatusReports](../api/cloudpcreports-getactionstatusreports.md)|Stream|Get the remote action status reports, including data such as the Cloud PC ID, Cloud PC device display name, initiating user's principal name, device owner's user principal name, action taken, and action state.|
|[getCloudPcRecommendationReports](../api/cloudpcreports-getcloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report.|
|[getConnectionQualityReports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the overall connection quality reports for all devices within a current tenant during a given period, including metrics like the average round trip time (P50), average available bandwidth, and UDP connection percentage. Get other real-time metrics such as last connection round trip time, last connection client IP, last connection gateway, and last connection protocol.|
|[getDailyAggregatedRemoteConnectionReports](../api/cloudpcreports-getdailyaggregatedremoteconnectionreports.md)|Stream|Get the daily aggregated remote connection reports like round trip time and available bandwidth in a given period.|
|[getInaccessibleCloudPcReports](../api/cloudpcreports-getinaccessiblecloudpcreports.md)|Stream|Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status.|
|[getRealTimeRemoteConnectionLatency](../api/cloudpcreports-getrealtimeremoteconnectionlatency.md)|Stream|Get the real-time remote connection latency reports like current round trip time and available bandwidth of a Cloud PC.|
|[getRealTimeRemoteConnectionStatus](../api/cloudpcreports-getrealtimeremoteconnectionstatus.md)|Stream|Get the real-time remote connection status reports like sign-in status or days since the last use of a Cloud PC.|
|[getRemoteConnectionHistoricalReports](../api/cloudpcreports-getremoteconnectionhistoricalreports.md)|Stream|Get a Cloud PC's remote connection historical reports, such as **signInDateTime**, **signOutDateTime**, or **usageInHour**, in a given period.|
|[getSharedUseLicenseUsageReport](../api/cloudpcreports-getshareduselicenseusagereport.md) (deprecated) |Stream| Get the shared use license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|
|[getFrontlineReport](../api/cloudpcreports-getfrontlinereport.md)|Stream| Get Frontline Cloud PC license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|
|[getTotalAggregatedRemoteConnectionReports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the total aggregated remote connection reports, like usage and **daysSinceLastUse**, in a given period.|
|[getRawRemoteConnectionReports](../api/cloudpcreports-getrawremoteconnectionreports.md)|Stream|Get the raw real-time remote connection report for a Cloud PC without any calculation or aggregation.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exportJobs|[cloudPcExportJob](../resources/cloudpcexportjob.md) collection|The export jobs created for downloading reports.|

## JSON representation
The following JSON representation shows the resource type.
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
