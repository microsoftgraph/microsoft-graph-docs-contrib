---
title: "urbacRoleAuditRecord resource type"
description: "Represents an audit record for Unified Role-Based Access Control (URBAC) role operations in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "URBAC role audit record"
---
# urbacRoleAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Unified Role-Based Access Control (URBAC) role operations in Microsoft security services. This resource captures activities related to the creation, modification, and deletion of security roles, including changes to role definitions, permissions, and scopes. The audit data helps security administrators track changes to the role structure, which forms the foundation of the access control system and directly impacts what actions users can perform within the security environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.urbacRoleAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urbacRoleAuditRecord"
}
```

