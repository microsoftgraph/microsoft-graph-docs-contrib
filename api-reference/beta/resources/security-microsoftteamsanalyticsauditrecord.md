---
title: "microsoftTeamsAnalyticsAuditRecord resource type"
description: "Represents an audit record that captures analytics-related activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Teams analytics audit record"
---
# microsoftTeamsAnalyticsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures analytics-related activities in Microsoft Teams. This record type documents events such as accessing Teams usage reports, viewing analytics dashboards, exporting analytics data, and configuring analytics settings, providing visibility into how Teams usage and performance data is being accessed and utilized within the organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsAnalyticsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsAnalyticsAuditRecord"
}
```

