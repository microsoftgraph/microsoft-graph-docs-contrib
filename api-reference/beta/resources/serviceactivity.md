---
title: "serviceActivity resource type"
description: "Represents the service activity of various Microsoft 365 services."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# serviceActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the service activity of various Microsoft 365 services.

Inherits from [entity](../resources/entity.md).

## Methods

### Exchange Online monitoring

For details, see [Exchange Online monitoring for Microsoft 365](/microsoft-365/enterprise/microsoft-365-exchange-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get active users metrics for desktop mail apps](../api/serviceactivity-getactiveusermetricsfordesktopmailbyreademail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who successfully read emails using desktop mail apps.|
|[Get active users metrics for Outlook apps for mobile](../api/serviceactivity-getactiveusermetricsforoutlookmobilebyreademail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who successfully read emails using Outlook apps for mobile.|
|[Get active users metrics for Outlook for the web](../api/serviceactivity-getactiveusermetricsforoutlookwebbyreademail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who successfully read emails using Outlook for the web.|
|[Get active users metrics for Outlook apps for Mac](../api/serviceactivity-getactiveusermetricsforoutlookmacbyreademail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who successfully read emails using Outlook for Mac.|
|[Get active users metrics for iOS or Android mail apps](../api/serviceactivity-getactiveusermetricsforiosorandroidmailbyreademail.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who successfully read emails using iOS or Android mail apps.|
|[Get active users metrics for opening Outlook for the web](../api/serviceactivity-getactiveusermetricsforoutlookwebbyappopening.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users that signed in and started Outlook for the web.|
|[Get active users metrics for modern authentication](../api/serviceactivity-getactiveusermetricsforemailbymodernauthentication.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of users who signed in with modern authentication across all email apps.|
|[Get metrics for messages successfully delivered by Exchange](../api/serviceactivity-getmessagevolumemetricsforemaildelivery.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of messages successfully delivered by Exchange. Success is based on message delivery within 15 minutes of its receipt by Exchange Online.|
|[Get metrics for connections to Exchange Online from communication apps](../api/serviceactivity-getconnectivitymetricsforexchange.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Get estimated connectivity metrics based on the percentage of successful synthetic connections between organization devices and Exchange Online that might include issues outside the control of Microsoft.|

### Microsoft 365 Teams monitoring

For details, see [Microsoft 365 Teams monitoring](/microsoft-365/enterprise/microsoft-365-teams-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get metrics for messages successfully sent by chat](../api/serviceactivity-getmessagevolumemetricsforteamschat.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of chat messages successfully sent and delivered in Teams.|
|[Get usage metrics based on successful app launch](../api/serviceactivity-getusagemetricsforteamsbylaunch.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get usage metrics based on the number of times users opened the Teams app without error.|
|[Get usage metrics based on successful join meeting](../api/serviceactivity-getusagemetricsforteamsbymeetingsjoined.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get usage metrics based on the number of times users joined Teams meetings without errors.|
|[Get metrics for the percentage of audio streams that received quality of experience telemetry](../api/serviceactivity-getaudiostreamqoemetricsforteams.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Get metrics based on the percentage of audio streams for which quality of experience (QoE) telemetry was received by the Teams service.|
|[Get metrics for the percentage of audio streams established over User Datagram Protocol(UDP)](../api/serviceactivity-getaudiostreamsoverudpmetricsforteams.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Get metrics based on the percentage of audio streams that were established over User Datagram Protocol.|

### Microsoft 365 Apps monitoring

For details, see [Microsoft 365 Apps monitoring](/microsoft-365/enterprise/microsoft-365-apps-monitoring).

|Method|Return type|Description|
|:---|:---|:---|
|[Get active users metrics for Excel for the web](../api/serviceactivity-getactiveusermetricsforexcelweb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users who open or save Excel for the web.|
|[Get active users metrics for OneNote for the web](../api/serviceactivity-getactiveusermetricsforonenoteweb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users who open or save OneNote for the web.|
|[Get active users metrics for PowerPoint for the web](../api/serviceactivity-getactiveusermetricsforpowerpointweb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users who open or save PowerPoint for the web.|
|[Get active users metrics for Visio for the web](../api/serviceactivity-getactiveusermetricsforvisioweb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users who open or save Visio for the web.|
|[Get active users metrics for Word for the web](../api/serviceactivity-getactiveusermetricsforwordweb.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get all the active usage based on the number of active users who open or save Word for the web.|

### Microsoft Entra

|Method|Return type|Description|
|:---|:---|:---|
|[Get MFA sign-in success metrics](../api/serviceactivity-getmetricsformfasigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users successfully completed interactive MFA sign-ins using the Microsoft Entra MFA cloud service during a specified time period.|
|[Get MFA sign-in failure metrics](../api/serviceactivity-getmetricsformfasigninfailure.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of times users fail to complete interactive MFA sign-ins using the Microsoft Entra MFA cloud service during a specified time period. Sign-in failures happen, for example, when users abandon or cancel MFA requests, or refresh MFA sessions without doing interactive MFA.|
|[Get managed devices Conditional Access sign-in metrics](../api/serviceactivity-getmetricsforconditionalaccessmanageddevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, during a specific time period, that satisfy a Conditional Access policy requiring devices to be managed. Managed devices are computers joined to and managed by your on-premises directory and hybrid devices joined to Microsoft Entra.|
|[Get compliant devices Conditional Access sign-in metrics](../api/serviceactivity-getmetricsforconditionalaccesscompliantdevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, during a specified time period, that satisfy a Conditional Access policy that requires device compliance. Microsoft Intune manages compliant devices, including mobile iOS/Android devices, tablets, or cloud Microsoft Entra-joined computers (not hybrid).|
|[Get SAML sign-in metrics](../api/serviceactivity-getmetricsforsamlsigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of SAML 2.0 authentications successfully processed by the Microsoft Entra cloud service for the tenant during a specified time period. This health signal currently doesn't include WS-FED/SAML 1.1 apps that are integrated with Microsoft Entra.|

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
