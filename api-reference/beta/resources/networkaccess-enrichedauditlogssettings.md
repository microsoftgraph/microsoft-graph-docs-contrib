---
title: "enrichedAuditLogsSettings resource type"
description: "Represents a configuration object that centralizes enriched audit logs settings related to speficic Microsoft 365 workload."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# enrichedAuditLogsSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a configuration object that centralizes enriched audit logs settings related to speficic Microsoft 365 workload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.networkaccess.status|Define the current status of the enrichment feature for a particular workload. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.enrichedAuditLogsSettings",
  "status": "String"
}
```

