---
title: "security resource type"
description: "Connects Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Connects Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alerts|[alert](../resources/alert.md) collection|Notifications for suspicious or potential security issues in a customer’s tenant.|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.|
|securityactions|[securityAction](../resources/securityaction.md)|Actions that respond to alerts to block malicious activities.|
|tiindicators|[tiIndicator](../resources/tiindicator.md) collection|Threat indicators sent to Microsoft that identify malicious activities.|
|threatSubmission|[security.threatSubmission](../resources/security-threatsubmission.md)|A threat submission sent to Microsoft; for example, a suspicious email threat, URL threat, or file threat.|

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

