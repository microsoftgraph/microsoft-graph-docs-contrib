---
title: "exchangeMailboxAuditGroupRecord resource type"
description: "Represents an audit record that captures group-related mailbox operations in Exchange Online."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Exchange mailbox audit group record"
---
# exchangeMailboxAuditGroupRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures group-related mailbox operations in Exchange Online. This record type documents actions performed on distribution groups, mail-enabled security groups, and other group objects within Exchange. It tracks activities such as group membership changes, permission modifications, and group property updates. These audit records help organizations monitor group management activities for security and compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.exchangeMailboxAuditGroupRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.exchangeMailboxAuditGroupRecord"
}
```

