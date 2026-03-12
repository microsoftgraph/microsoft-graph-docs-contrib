---
title: "workplaceAnalyticsAuditRecord resource type"
description: "Represents an audit record for activities in Microsoft Workplace Analytics (now part of Viva Insights)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Workplace analytics audit record"
---
# workplaceAnalyticsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for activities in Microsoft Workplace Analytics (now part of Viva Insights). This resource captures actions related to the analysis of organizational productivity and collaboration patterns, including report generation, data access, privacy settings changes, and administrative configurations. The audit data helps organizations maintain proper governance of workplace analytics functions, ensuring that sensitive collaboration data is handled appropriately and that privacy controls are properly maintained and documented.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.workplaceAnalyticsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.workplaceAnalyticsAuditRecord"
}
```

