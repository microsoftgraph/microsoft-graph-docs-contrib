---
title: "auditSearchAuditRecord resource type"
description: "Represents an audit record for audit log search operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Audit search audit record"
---
# auditSearchAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for audit log search operations. This resource captures information about searches performed against the unified audit log, including search queries, filters, and access patterns.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditSearchAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditSearchAuditRecord"
}
```

