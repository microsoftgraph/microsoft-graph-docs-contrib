---
title: "windows365CustomerLockboxAuditRecord resource type"
description: "Represents an audit record for Windows 365 Customer Lockbox activities, which control Microsoft engineer access to customer content."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Windows 365 customer lockbox audit record"
---
# windows365CustomerLockboxAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Windows 365 Customer Lockbox activities, which control Microsoft engineer access to customer content. This resource captures events related to access requests, approvals, denials, and expirations for Microsoft support personnel needing access to customer Cloud PC environments to resolve service issues. The audit data provides a complete record of all access requests and their outcomes, helping organizations maintain control over their data and meet compliance requirements for cloud service provider access to customer content.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.windows365CustomerLockboxAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.windows365CustomerLockboxAuditRecord"
}
```

