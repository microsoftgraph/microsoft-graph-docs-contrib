---
title: "mipLabelAnalyticsAuditRecord resource type"
description: "Represents an audit record that captures analytical information about sensitivity label usage and effectiveness."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP label analytics audit record"
---
# mipLabelAnalyticsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures analytical information about sensitivity label usage and effectiveness across the organization. This resource provides insights into label application patterns, user interactions with labeled content, and the overall effectiveness of the information protection strategy. These analytics help administrators understand how sensitivity labels are being used and identify opportunities to improve information protection policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipLabelAnalyticsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipLabelAnalyticsAuditRecord"
}
```

