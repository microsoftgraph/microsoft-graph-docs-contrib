---
title: "plannerRosterAuditRecord resource type"
description: "Represents an audit record that captures information about changes to Planner roster membership."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner roster audit record"
---
# plannerRosterAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to Planner roster membership. This resource provides details about users being added to or removed from Microsoft Planner rosters, which control access and permissions to plans and tasks. These audit records help organizations track who modified roster membership, when those changes occurred, and which users were affected, supporting security monitoring and access control compliance requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerRosterAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerRosterAuditRecord"
}
```

