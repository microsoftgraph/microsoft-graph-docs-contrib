---
title: "sharePointContentTypeOperationAuditRecord resource type"
description: "Represents an audit record for content type operations in SharePoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint content type operation audit record"
---
# sharePointContentTypeOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures content type operations in SharePoint. This resource tracks activities related to the creation, modification, and management of content types, which define the metadata, workflows, and behaviors for documents and items. These audit records help organizations monitor changes to their information architecture and content classification systems, providing visibility into how content management structures evolve over time.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointContentTypeOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointContentTypeOperationAuditRecord"
}
```

