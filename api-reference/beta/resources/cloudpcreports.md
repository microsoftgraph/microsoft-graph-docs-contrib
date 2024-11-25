---
title: "cloudPcReports resource type"
description: "Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# cloudPcReports resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC remote connections report.

Use a method in the [Methods](#methods) section to get the corresponding report data in the response. Alternatively, you can use the [cloudPCExportJob](cloudpcexportjob.md) resource and specify a storage account URL to download the specific report.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get action status reports](../api/cloudpcreports-getactionstatusreports.md)|Stream|Get the remote action status reports, including data such as the Cloud PC ID, Cloud PC device display name, initiating user's principal name, device owner's user principal name, action taken, and action state.|
|[Get bulk action status reports](../api/cloudpcreports-retrievebulkactionstatusreport.md)|Stream|Get the bulk remote action status reports, including data such as the bulk action ID, bulk action display name, initiating user's principal name, action type, and action state.|
|[Get Cloud PC recommendation reports](../api/cloudpcreports-getcloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report.|
|[Get frontline report](../api/cloudpcreports-getfrontlinereport.md)|Stream| Get Frontline Cloud PC license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|
|[Get inaccessible Cloud PC reports](../api/cloudpcreports-getinaccessiblecloudpcreports.md)|Stream|Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status.|
|[Get raw remote connection reports](../api/cloudpcreports-getrawremoteconnectionreports.md)|Stream|Get the raw real-time remote connection report for a Cloud PC without any calculation or aggregation.|
|[Get real time remote connection agency reports](../api/cloudpcreports-getrealtimeremoteconnectionlatency.md)|Stream|Get the real-time remote connection latency reports like current round trip time and available bandwidth of a Cloud PC.|
|[Get real-time remote connection status reports](../api/cloudpcreports-getrealtimeremoteconnectionstatus.md)|Stream|Get the real-time remote connection status reports like sign-in status or days since the last use of a Cloud PC.|
|[Get remove connection hitorical reports](../api/cloudpcreports-getremoteconnectionhistoricalreports.md)|Stream|Get a Cloud PC's remote connection historical reports, such as **signInDateTime**, **signOutDateTime**, or **usageInHour**, in a given period.|
|[Get total aggregated remote connection reports](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the total aggregated remote connection reports, like usage and **daysSinceLastUse**, in a given period.|
|[Retrieve cross-region disaster recovery report](../api/cloudpcreports-retrievecrossregiondisasterrecoveryreport.md)|Stream| Retrieve the Windows 365 cross-region disaster recovery report with configuration health check results, disaster recovery status, latest cross-region restore points, and user settings.|
|[Retrieve connection quality reports](../api/cloudpcreports-retrieveconnectionqualityreports.md)|Stream|Get the overall connection quality reports for all devices in the current tenant, the regional connection quality trend report, and the regional connection quality insight report, including round trip time, available bandwidth, UPD usage, and dropped connections.|
|[Get daily aggregated remote connection reports](../api/cloudpcreports-getdailyaggregatedremoteconnectionreports.md)|Stream|Get the daily aggregated remote connection reports like round trip time and available bandwidth in a given period.|
|[Get connection quality reports (deprecated)](../api/cloudpcreports-gettotalaggregatedremoteconnectionreports.md)|Stream|Get the overall connection quality reports for all devices within a current tenant during a given period, including metrics like the average round trip time (P50), average available bandwidth, and UDP connection percentage. Also get other real-time metrics such as last connection round trip time, last connection client IP, last connection gateway, and last connection protocol. This API is deprecated and will stop returning data on December 31, 2024. Going forward, use the [retrieveConnectionQualityReports](../api/cloudpcreports-retrieveconnectionqualityreports.md) API.|
|[Get shared use license usage report (deprecated)](../api/cloudpcreports-getshareduselicenseusagereport.md) |Stream| Get the shared use license usage reports, such as **servicePlanId**, **licenseCount**, and **claimedLicenseCount**, for real-time, 7 days, or 28 days trend.|

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
