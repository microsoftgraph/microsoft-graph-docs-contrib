---
title: "syntheticProbeAuditRecord resource type"
description: "Represents an audit record for synthetic monitoring probe activities in Microsoft services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Synthetic probe audit record"
---
# syntheticProbeAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures synthetic monitoring probe activities in Microsoft services. This resource tracks automated testing and monitoring probes that check system health, availability, and performance. These audit records help organizations distinguish between actual user activities and synthetic monitoring activities in their audit logs, providing clarity when analyzing security events and service usage patterns.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.syntheticProbeAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.syntheticProbeAuditRecord"
}
```

