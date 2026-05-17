---
title: "labelAnalyticsAggregateAuditRecord resource type"
description: "Represents an audit record that captures aggregated analytics data related to sensitivity label usage and application across the organization."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Label analytics aggregate audit record"
---
# labelAnalyticsAggregateAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures aggregated analytics data related to sensitivity label usage and application across the organization. This record type provides insights into label distribution, trends, and usage patterns to help administrators evaluate the effectiveness of their information protection policies.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.labelAnalyticsAggregateAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.labelAnalyticsAggregateAuditRecord"
}
```

