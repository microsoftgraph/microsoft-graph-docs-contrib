---
title: "attackSimAdminAuditRecord resource type"
description: "Represents an audit record for attack simulation administrator operations."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Attack sim admin audit record"
---
# attackSimAdminAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for attack simulation administrator operations. This resource captures information about administrative activities related to attack simulation training, including campaign configuration, payload management, and simulation settings.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.attackSimAdminAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.attackSimAdminAuditRecord"
}
```

