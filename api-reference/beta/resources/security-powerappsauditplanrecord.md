---
title: "powerAppsAuditPlanRecord resource type"
description: "Represents an audit record that captures information about activities related to Power Apps plans and licenses."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Apps audit plan record"
---
# powerAppsAuditPlanRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities related to Power Apps plans and licenses. This resource provides details about subscription management, license assignments, plan purchases, and capacity allocation for the Power Apps platform. These audit records help organizations track changes to their Power Platform licensing structure, understand license usage patterns, and maintain compliance with licensing agreements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerAppsAuditPlanRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerAppsAuditPlanRecord"
}
```

