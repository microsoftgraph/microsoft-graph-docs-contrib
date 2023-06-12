---
title: "enrichedAuditLogsSettings resource type"
description: "The enriched audit logs settings will be organized in an expandable object to centralize all future feature-relevant settings. At present, it only includes the 'status' setting, which indicates whether the enrichment is turned on or off for that particular workload"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# enrichedAuditLogsSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The enriched audit logs settings will be organized in an expandable object to centralize all future feature-relevant settings. At present, it only includes the 'status' setting, which indicates whether the enrichment is turned on or off for that particular workload

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.networkaccess.status|Indicate if Global Secure Access should enrich audit logs.The possible values are: `enabled`, `disabled`|

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

