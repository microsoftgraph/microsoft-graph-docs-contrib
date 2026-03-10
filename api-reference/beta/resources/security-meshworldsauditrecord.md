---
title: "meshWorldsAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Mesh virtual world environments."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Mesh worlds audit record"
---
# meshWorldsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Mesh virtual world environments. This record type documents events such as virtual space creation, modification, access, and interaction activities within Microsoft Mesh environments, providing visibility into mixed reality collaboration spaces and their usage patterns for security and compliance purposes.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.meshWorldsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.meshWorldsAuditRecord"
}
```

