---
title: "urbacAssignmentAuditRecord resource type"
description: "Represents an audit record for Unified Role-Based Access Control (URBAC) assignment operations in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "URBAC assignment audit record"
---
# urbacAssignmentAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Unified Role-Based Access Control (URBAC) assignment operations in Microsoft security services. This resource captures activities related to the assignment of roles to users, groups, or service principals, including who made the assignment, when it was made, what roles were assigned, and to whom they were assigned. The audit data helps security administrators track changes to role assignments, which are critical for maintaining proper access controls and security boundaries within the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.urbacAssignmentAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urbacAssignmentAuditRecord"
}
```

