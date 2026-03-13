---
title: "sharePointSharingOperationAuditRecord resource type"
description: "Represents an audit record for sharing operations in SharePoint and OneDrive."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint sharing operation audit record"
---
# sharePointSharingOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures sharing operations in SharePoint and OneDrive. This resource tracks activities related to content sharing, including creating and modifying sharing links, inviting external users, changing permissions, and access requests. These audit records help organizations monitor how content is being shared both internally and externally, providing visibility into potential data exposure risks and collaboration patterns.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointSharingOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointSharingOperationAuditRecord"
}
```

