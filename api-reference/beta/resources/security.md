---
title: "security resource type"
description: "To connect Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities."
author: "angelgolfer-ms"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To connect Microsoft security products, services, and partners to streamline security operations and improve threat protection, detection, and response capabilities.

## Methods
|Method|Return type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alert|[alert](../resources/alert.md)|Notifications for suspicious or potential security issues in a customer’s tenant.|
|attackSimulation|[attackSimulationRoot](../resources/attacksimulationroot.md)|Provides tenants capability to launch a realistic phishing attacks and learn from it.|
|securescores|[secureScores](../resources/securescores.md)|Measurements of tenants’ security posture to help protect them from threats.|
|securityaction|[securityAction](../resources/securityaction.md)|Actions that respond to alerts to block malicious activities.|
|tiindicator|[tiIndicator](../resources/tiindicator.md)|Threat indicators sent to Microsoft that identify malicious activities.|

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

