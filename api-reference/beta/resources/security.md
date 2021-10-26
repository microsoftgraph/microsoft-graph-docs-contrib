---
title: "security resource type"
description: "To connect Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities."
author: "preetikr"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To connect Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts|[alert](../resources/alert.md) collection|Notifications for suspicious or potential security issues in a customer’s tenant.|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.|
|incidents | [incident](incident.md) collection | A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.|
|secureScores | [secureScore](securescores.md) collection | Measurements of tenants’ security posture to help protect them from threats. |
|securityactions|[securityAction](../resources/securityaction.md) collection|Actions that respond to alerts to block malicious activities.|
|securityactions|[securityAction](../resources/securityaction.md)|Actions that respond to alerts to block malicious activities.|
|tiindicators|[tiIndicator](../resources/tiindicator.md) collection|Threat indicators sent to Microsoft that identify malicious activities.|

## JSON representation
The following is a JSON representation of the resource.
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

