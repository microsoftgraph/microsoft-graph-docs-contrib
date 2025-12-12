---
title: "serviceActivity resource type"
description: "Represents the service activity of various Microsoft 365 services."
author: "Zacharypeng"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 05/23/2024
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
|[Get metrics for the percentage of audio streams established over User Datagram Protocol (UDP)](../api/serviceactivity-getaudiostreamsoverudpmetricsforteams.md)|[serviceActivityPerformanceMetric](../resources/serviceactivityperformancemetric.md) collection|Get metrics based on the percentage of audio streams that were established over User Datagram Protocol.|

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
|[Get Conditional Access blocked sign-in metrics](../api/serviceactivity-getmetricsforconditionalaccessblockedsignin.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of user sign-in attempts that were blocked by a Conditional Access policy during a specific period.|
|[Get compliant devices Conditional Access sign-in metrics](../api/serviceactivity-getmetricsforconditionalaccesscompliantdevicessigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of user authentication requests, during a specified time period, that satisfy a Conditional Access policy that requires device compliance. Microsoft Intune manages compliant devices, including mobile iOS/Android devices, tablets, or cloud Microsoft Entra-joined computers (not hybrid).|
|[Get SAML sign-in metrics](../api/serviceactivity-getmetricsforsamlsigninsuccess.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Get the number of SAML 2.0 authentications successfully processed by the Microsoft Entra cloud service for the tenant during a specified time period. This health signal currently doesn't include WS-FED/SAML 1.1 apps that are integrated with Microsoft Entra.|
|[Get network access internet app policy blocked users metrics](../api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyblockedusers.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of users' internet application access attempts blocked due to web content filtering policies applied to specific FQDNs using Global Secure Access client.|
|[Get network access internet app policy blocked apps metrics](../api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyblockedapps.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of internet applications that were blocked due to web content filtering policies applied to specific FQDNs using Global Secure Access client. Microsoft Entra Internet Access traffic may be restricted when these policies are enforced.|
|[Get network access internet app policy allowed users metrics](../api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyallowedusers.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of users allowed by web content filtering policies applied to specific FQDNs using Global Secure Access client.|
|[Get network access internet app policy allowed apps metrics](../api/serviceactivity-getmetricsfornetworkaccessinternetapppolicyallowedapps.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of internet applications allowed by web content filtering policies applied to specific FQDNs using Global Secure Access client.|
|[Get network access private app users blocked by connector metrics](../api/serviceactivity-getmetricsfornetworkaccessprivateappusersblockedbyconnector.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of users' private application access attempts that were blocked due to connector unavailability using Global Secure Access client. Microsoft Entra Private Access traffic could not reach the private application because the connector was either down or unreachable due to network connectivity issues.|
|[Get network access private apps blocked by connector metrics](../api/serviceactivity-getmetricsfornetworkaccessprivateappsblockedbyconnector.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of private applications that were blocked due to connector unavailability using Global Secure Access client. Microsoft Entra Private Access traffic could not reach the private application because the connector was either down or unreachable due to network connectivity issues.|
|[Get network access private app users allowed by connector metrics](../api/serviceactivity-getmetricsfornetworkaccessprivateappusersallowedbyconnector.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of users' private application access attempts that were allowed using Global Secure Access client.|
|[Get network access private apps allowed by connector metrics](../api/serviceactivity-getmetricsfornetworkaccessprivateappsallowedbyconnector.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of private applications that were allowed using Global Secure Access client.|
|[Get network access remote network branches alive metrics](../api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesalive.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of remote networks which are connected. A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service through IPsec tunnels.|
|[Get network access remote network branches tunnel disconnected metrics](../api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchestunneldisconnected.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of remote networks which are disconnected due to the tunnel being down. A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service through IPsec tunnels.|
|[Get network access remote network branches tunnel connected metrics](../api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchestunnelconnected.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of remote network tunnels which are connected. A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service through IPsec tunnels.|
|[Get network access remote network branches BGP disconnected metrics](../api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesbgpdisconnected.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of remote networks which are disconnected due to BGP being down. A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service through IPsec tunnels.|
|[Get network access remote network branches BGP connected metrics](../api/serviceactivity-getmetricsfornetworkaccessremotenetworkbranchesbgpconnected.md)|[serviceActivityValueMetric](../resources/serviceactivityvaluemetric.md) collection|Retrieve the number of remote networks with connected BGP. A remote network represents a location such as a branch office where customer premises equipment (CPE) is connected to the nearest deployment of Global Secure Access service through IPsec tunnels.|

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
