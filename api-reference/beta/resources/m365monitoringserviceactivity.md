---
title: "serviceActivity resource type"
description: "Represents Microsot 365 Monitoring APIs."
author: "mkuninty"
ms.localizationpriority: medium
ms.subservice: "m365-monitoring-service"
doc_type: resourcePageType
---

# serviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft 365 monitoring APIs are available to customers who meet the requirements. For more details, see [Microsoft 365 monitoring](/microsoft-365/enterprise/microsoft-365-monitoring)

## Methods
### Exchange Online monitoring

For details, see [Exchange Online monitoring for Microsoft 365](/microsoft-365/enterprise/microsoft-365-exchange-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get active users metrics for desktop mail apps](../api/serviceactivity-getActiveUserMetricsForDesktopMailByReadEmail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users that successfully read emails using desktop mail apps.|
|[Get active users metrics for Outlook apps for mobile](../api/serviceactivity-getActiveUserMetricsForOutlookMobileByReadEmail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users that successfully read emails using Outlook apps for mobile.|
|[Get active users metrics for Outlook for the web](../api/serviceactivity-getActiveUserMetricsForOutlookWebByReadEmail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users that successfully read emails using Outlook for the web.|
|[Get active users metrics for Outlook apps for Mac](../api/serviceactivity-getActiveUserMetricsForOutlookMacByReadEmail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users that successfully read emails using Outlook for the Mac.|
|[Get active users metrics for iOS or Android mail apps](../api/serviceactivity-getActiveUserMetricsForiOSOrAndroidMailByReadEmail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users that successfully read emails using iOS or Android mail apps.|
|[Get active users metrics for opening Outlook for the web](../api/serviceactivity-getActiveUserMetricsForOutlookWebByAppOpening.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users that signed in and started Outlook for the web.|
|[Get active users metrics for modern authentication](../api/serviceactivity-getActiveUserMetricsForEmailByModernAuthentication.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of users who signed in with modern authentication across all email apps.|
|[Get metrics for messages successfully delivered by Exchange](../api/serviceactivity-getMessageVolumeMetricsForEmailDelivery.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets the number of messages successfully delivered by Exchange. Success is based on message delivery within 15 minutes of its receipt by Exchange Online.|
|[Get metrics for connections to Exchange Online from communication apps](../api/serviceactivity-getConnectivityMetricsForExchange.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Gets estimated connectivity metrics based on the percentage of successful, synthetic connections between org's devices and Exchange Online and may include issues outside of Microsoft's control.|

### Microsoft 365 Teams monitoring

For details, see [Microsoft 365 Teams monitoring](/microsoft-365/enterprise/microsoft-365-teams-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get metrics for messages successfully sent by chat](../api/serviceactivity-getMessageVolumeMetricsForTeamsChat.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets the number of chat messages successfully sent and delivered in Teams.|
|[Get usage metrics based on succesful app launch](../api/serviceactivity-getUsageMetricsForTeamsByLaunch.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets usage metrics based on the number of times users opened the Teams app without error.|
|[Get usage metrics based on successful join meeting](../api/serviceactivity-getUsageMetricsForTeamsByMeetingsJoined.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets usage metrics based on the number of times users joined Teams meeting without errors.|
|[Get metrics for the percentage of audio streams that received Quality of Experience(QoE) telemetry](../api/serviceactivity-getAudioStreamQoEMetricsForTeams.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Gets metrics based on the percentage of audio streams for which Quality of Experience(QoE) telemetry was received by the Teams service.|
|[Get metrics for the percentage of audio streams established over User Datagram Protocol(UDP)](../api/serviceactivity-getAudioStreamsOverUdpMetricsForTeams.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Gets metrics based on the percentage of audio streams that were established over User Datagram Protocol.|

### OneDrive for Business monitoring (preview)

|Method|Return type|Description|
|:---|:---|:---|
|[Get device metrics for download online-only files](../api/serviceactivity-getDeviceMetricsForOneDriveForBusinessBydownloadOnlineOnlyFiles.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets  metrics based on the number of unique devices that downloaded online-only files without errors from the OneDrive desktop app.|

### Microsoft 365 Apps monitoring

For details, see [Microsoft 365 Apps monitoring](/microsoft-365/enterprise/microsoft-365-apps-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get active users metrics for Excel for the web](../api/serviceactivity-getActiveUserMetricsForExcelWeb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users opening or saving Excel for the web.|
|[Get active users metrics for OneNote for the web](../api/serviceactivity-getActiveUserMetricsForOneNoteWeb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users opening or saving OneNote for the web.|
|[Get active users metrics for PowerPoint for the web](../api/serviceactivity-getActiveUserMetricsForPowerPointWeb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users opening or saving PowerPoint for the web.|
|[Get active users metrics for Visio for the web](../api/serviceactivity-getActiveUserMetricsForVisioWeb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users opening or saving Visio for the web.|
|[Get active users metrics for Word for the web](../api/serviceactivity-getActiveUserMetricsForWordWeb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Gets all the active usage based on the number of active users opening or saving Word for the web.|

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceActivity"
}
```
