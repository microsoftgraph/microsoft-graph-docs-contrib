---
title: "exchangeMailboxAuditRecord resource type"
description: "Represents an audit record that captures user interactions with mailbox content in Exchange Online."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange mailbox audit record"
---
# exchangeMailboxAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures user interactions with mailbox content in Exchange Online. This record type documents actions performed on email messages, calendar items, tasks, and other mailbox items. It tracks activities such as message creation, reading, modification, deletion, and folder movements. These audit records help organizations monitor user activities within mailboxes for security monitoring, insider threat detection, and compliance with data protection requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeMailboxAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeMailboxAuditRecord"
}
```

