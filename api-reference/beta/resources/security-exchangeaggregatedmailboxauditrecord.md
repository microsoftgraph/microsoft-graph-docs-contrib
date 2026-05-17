---
title: "exchangeAggregatedMailboxAuditRecord resource type"
description: "Represents an aggregated audit record that summarizes mailbox activities in Exchange Online."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange aggregated mailbox audit record"
---
# exchangeAggregatedMailboxAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregated audit record that summarizes mailbox activities in Exchange Online. This record type consolidates multiple related mailbox operations into a single audit event, providing a comprehensive view of user interactions with mailbox content. The aggregation helps reduce audit log volume while still maintaining visibility into important mailbox activities such as access by delegates, message operations, and folder modifications.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeAggregatedMailboxAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeAggregatedMailboxAuditRecord"
}
```

