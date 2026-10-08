---
title: "sharePointCommentOperationAuditRecord resource type"
description: "Represents an audit record for comment operations in SharePoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint comment operation audit record"
---
# sharePointCommentOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures comment operations in SharePoint. This resource tracks activities related to comments on SharePoint files, pages, and list items, including comment creation, modification, and deletion. These audit records help organizations monitor collaboration activities and communications within their SharePoint environment, providing visibility into discussions and feedback shared through comments.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointCommentOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointCommentOperationAuditRecord"
}
```

