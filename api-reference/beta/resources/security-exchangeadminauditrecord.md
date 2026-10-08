---
title: "exchangeAdminAuditRecord resource type"
description: "Represents an audit record that captures administrative activities in Exchange Online."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange admin audit record"
---
# exchangeAdminAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures administrative activities in Exchange Online. This record type documents actions performed by administrators in the Exchange Admin Center, Exchange Management Shell, or via Exchange Online PowerShell. The audit information includes details about mailbox configurations, transport rule modifications, permission changes, and other administrative operations that affect the Exchange environment. These records help organizations track administrative changes for security monitoring, compliance, and troubleshooting purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeAdminAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeAdminAuditRecord"
}
```

