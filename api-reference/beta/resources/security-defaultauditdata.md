---
title: "defaultAuditData resource type"
description: "Represents the default audit log data as an open type in an auditLogRecord."
author: "arishojaswi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# defaultAuditData resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the default audit log data in an [auditLogRecord](../resources/security-auditlogrecord.md). This resource is an open type that contains the raw JSON audit data for Microsoft 365 services that don't have a specific derived type defined.

Inherits from [auditData](../resources/security-auditdata.md).

## Properties
None.
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.defaultAuditData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.defaultAuditData"
}
```
