---
title: "securityComplianceRBACAuditRecord resource type"
description: "Represents an audit record for role-based access control (RBAC) activities in the Security & Compliance Center."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Security compliance RBAC audit record"
---
# securityComplianceRBACAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures role-based access control (RBAC) activities in the Security & Compliance Center. This resource tracks administrative actions related to role management, including role assignments, role group modifications, and permission changes. These audit records help organizations monitor and manage access control activities for security administration, ensuring appropriate governance of security and compliance management capabilities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityComplianceRBACAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityComplianceRBACAuditRecord"
}
```

