---
title: "auditData resource type"
description: "Abstract type that supports the audit logs of various Microsoft 365 services."
author: "arishojaswi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# auditData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents audit log data in an [auditLogRecord](../resources/security-auditlogrecord.md). This base type is inherited by over 270 derived types, each representing audit data for a specific Microsoft 365 service or feature. For a complete list of all derived types, see [auditData derived types](../resources/security-auditdata-derived-types.md).

The [defaultAuditData](../resources/security-defaultauditdata.md) type is an open type that contains the raw JSON audit data for Microsoft 365 services that don't have a specific derived type.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditData"
}
```
