---
title: "exchangeMailboxAuditBaseRecord resource type"
description: "Represents a base type for Exchange mailbox audit records that capture mailbox access and operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange mailbox audit base record"
---
# exchangeMailboxAuditBaseRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base type for Exchange mailbox audit records that capture mailbox access and operations. This resource serves as the foundation for more specific mailbox audit record types and provides common properties for tracking user activities within Exchange mailboxes. It helps organizations monitor mailbox access patterns, detect suspicious activities, and maintain compliance with data protection requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeMailboxAuditBaseRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeMailboxAuditBaseRecord"
}
```

