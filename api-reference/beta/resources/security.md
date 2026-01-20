---
title: "security resource type"
description: "Connects Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 11/03/2025
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Connects Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Run hunting query](../api/security-security-runhuntingquery.md)|[microsoft.graph.security.huntingQueryResults](../resources/security-huntingqueryresults.md)|Queries a specified set of event, activity, or entity data supported by Microsoft 365 Defender to proactively look for specific threats in your environment.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts |[alert](../resources/alert.md) collection|Notifications for suspicious or potential security issues in a customer's tenant.|
|alerts_v2 | [microsoft.graph.security.alert](security-alert.md) collection | A collection of alerts in Microsoft 365 Defender.|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.|
|collaboration|[microsoft.graph.security.collaborationRoot](../resources/security-collaborationroot.md)|Enables read and other actions on collaborative entities in Microsoft Defender.|
|identities|[microsoft.graph.security.identityContainer](../resources/security-identityContainer.md)|A container for security identities APIs.|
|incidentTasks|[microsoft.graph.security.incidentTask](security-incidenttask.md) collection|A collection of tasks associated with security incidents.|
|incidents | [microsoft.graph.security.incident](security-incident.md) collection | A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.|
|partner| [microsoft.graph.partner.security.partnerSecurity](../resources/partner-security-partnersecurity.md) | A container that safeguards the Microsoft Azure resources of Microsoft Cloud Solution Provider (CSP) partners' customers, including alerts, scores, and all aspects of security. |
|secureScores | [secureScore](securescore.md) collection | Measurements of tenants' security posture to help protect them from threats. |
|securityCopilot | [securityCopilot](../resources/securitycopilot.md) collection | Represents the resources related to Microsoft Security Copilot. |
|securityactions|[securityAction](../resources/securityaction.md) collection|Actions that respond to alerts to block malicious activities.|
|tiindicators|[tiIndicator](../resources/tiindicator.md) collection|Threat indicators sent to Microsoft that identify malicious activities.|
|threatSubmission|[security.threatSubmission](../resources/security-threatsubmission.md)|A threat submission sent to Microsoft; for example, a suspicious email threat, URL threat, or file threat.|
|zones|[microsoft.graph.security.zone](../resources/security-zone.md) collection|A collection of cloud zones in Microsoft Defender for Cloud that group and manage cloud environments across multiple cloud providers.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security"
}
```
