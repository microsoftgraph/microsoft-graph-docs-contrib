---
title: "sharePointFieldOperationAuditRecord resource type"
description: "Represents an audit record for field operations in SharePoint lists and libraries."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint field operation audit record"
---
# sharePointFieldOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures field operations in SharePoint lists and libraries. This resource tracks activities related to the creation, modification, and deletion of fields (columns) in SharePoint lists and document libraries. These audit records help organizations monitor changes to their information architecture and metadata structures, providing visibility into how data schemas evolve over time.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointFieldOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointFieldOperationAuditRecord"
}
```

