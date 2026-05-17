---
title: "securityComplianceInsightsAuditRecord resource type"
description: "Represents an audit record for security and compliance insight activities in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Security compliance insights audit record"
---
# securityComplianceInsightsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures security and compliance insight activities in Microsoft 365. This resource tracks interactions with security and compliance analytics, reports, dashboards, and data visualizations within the Security & Compliance Center. These audit records help organizations monitor how security and compliance insights are being accessed and utilized, providing visibility into data-driven security management activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityComplianceInsightsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityComplianceInsightsAuditRecord"
}
```

