---
title: "kaizalaAuditRecord resource type"
description: "Represents an audit record that captures user and administrative activities in Microsoft Kaizala."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Kaizala audit record"
---
# kaizalaAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures user and administrative activities in Microsoft Kaizala. This record type documents actions performed within the Kaizala messaging and productivity application, including group management, message delivery, policy application, and administrative changes. These audit records help organizations track usage patterns, monitor compliance with messaging policies, and investigate security incidents involving mobile communication.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kaizalaAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.kaizalaAuditRecord"
}
```

