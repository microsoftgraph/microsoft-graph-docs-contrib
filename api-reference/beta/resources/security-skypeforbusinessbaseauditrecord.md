---
title: "skypeForBusinessBaseAuditRecord resource type"
description: "Represents a base audit record type for Skype for Business activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Skype for Business base audit record"
---
# skypeForBusinessBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base audit record type for Skype for Business activities. This resource serves as the parent type for more specific Skype for Business audit records, providing common properties and structures used across different types of Skype for Business audit events. Specific child types extend this base type to capture particular categories of Skype for Business activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.skypeForBusinessBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.skypeForBusinessBaseAuditRecord"
}
```

