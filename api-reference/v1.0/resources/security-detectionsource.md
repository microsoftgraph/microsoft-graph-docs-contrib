---
title: "detectionSource enum type"
description: "Detection technology or sensor that identified the notable component or activity."
author: "BenAlfasi"
ms.date: 01/08/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# detectionSource enum type

Namespace: microsoft.graph.security

Detection technology or sensor that identified the notable component or activity.

## Members

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `microsoftDefenderForCloud`, `microsoftDefenderForIoT`, `microsoftDefenderForServers`, `microsoftDefenderForStorage`, `microsoftDefenderForDNS`, `microsoftDefenderForDatabases`, `microsoftDefenderForContainers`, `microsoftDefenderForNetwork`, `microsoftDefenderForAppService`, `microsoftDefenderForKeyVault`, `microsoftDefenderForResourceManager`, `microsoftDefenderForApiManagement`, `nrtAlerts`, `scheduledAlerts`, `microsoftDefenderThreatIntelligenceAnalytics`, `builtInMl`, `microsoftInsiderRiskManagement`, `microsoftThreatIntelligence`, `microsoftDefenderForAIServices`, `securityCopilot`, `microsoftSentinel`.

| Member | Description |
|:-------|:------------|
| unknown | Unknown detection source. |
| microsoftDefenderForEndpoint | Microsoft Defender For Endpoint. |
| antivirus | Antivirus software. |
| smartScreen | Microsoft Defender SmartScreen. |
| customTi | Custom threat intelligence. |
| microsoftDefenderForOffice365 | Microsoft Defender for Office 365. |
| automatedInvestigation | Automated investigation. |
| microsoftThreatExperts | Microsoft Threat Experts. |
| customDetection | Custom detection. |
| microsoftDefenderForIdentity | Microsoft Defender for Identity. |
| cloudAppSecurity | Cloud app security. |
| microsoft365Defender | Microsoft 365 Defender. |
| azureAdIdentityProtection | Microsoft Entra ID Protection. |
| manual | Manual detection. |
| microsoftDataLossPrevention | Microsoft Purview Data Loss Prevention. |
| appGovernancePolicy | App governance policy. |
| appGovernanceDetection | App governance detection. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
| microsoftDefenderForCloud | Microsoft Defender for Cloud. |
| microsoftDefenderForIoT | Microsoft Defender for IoT. |
| microsoftDefenderForServers | Microsoft Defender for Servers. |
| microsoftDefenderForStorage | Microsoft Defender for Storage. |
| microsoftDefenderForDNS | Microsoft Defender for DNS. |
| microsoftDefenderForDatabases | Microsoft Defender for Databases. |
| microsoftDefenderForContainers | Microsoft Defender for Containers. |
| microsoftDefenderForNetwork | Microsoft Defender for Network. |
| microsoftDefenderForAppService | Microsoft Defender for App Service. |
| microsoftDefenderForKeyVault | Microsoft Defender for Key Vault. |
| microsoftDefenderForResourceManager | Microsoft Defender for Resource Manager. |
| microsoftDefenderForApiManagement | Microsoft Defender for API Management. |
| nrtAlerts | Sentinel NRT Alerts. |
| scheduledAlerts | Sentinel Scheduled Alerts. |
| microsoftDefenderThreatIntelligenceAnalytics | Sentinel Threat Intelligence Alerts. |
| builtInMl | Sentinel Built-in ML. |
| microsoftInsiderRiskManagement | Microsoft Insider Risk Management. |
| microsoftThreatIntelligence | Microsoft Threat Intelligence. |
| microsoftDefenderForAIServices | Microsoft Defender for AI Services. |
| securityCopilot | Security Copilot. |
| microsoftSentinel | Microsoft Sentinel. |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
