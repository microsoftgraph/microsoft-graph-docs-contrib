---
title: "dataCenterSecurityBaseAuditRecord resource type"
description: "Represents a base type for data center security audit records that capture security-related activities and operations in Microsoft data centers."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Data center security base audit record"
---
# dataCenterSecurityBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for data center security audit records that capture security-related activities and operations in Microsoft data centers. This resource serves as the foundation for more specific data center security audit record types.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dataCenterSecurityBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataCenterSecurityBaseAuditRecord"
}
```

