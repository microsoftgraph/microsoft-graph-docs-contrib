---
title: "microsoftTeamsAdminAuditRecord resource type"
description: "Represents an audit record that captures administrative activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Teams admin audit record"
---
# microsoftTeamsAdminAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures administrative activities in Microsoft Teams. This record type documents events such as team creation, modification, and deletion, policy changes, tenant-wide settings updates, and other administrative actions performed by Teams administrators, providing visibility into Teams governance and configuration management activities.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsAdminAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsAdminAuditRecord"
}
```

