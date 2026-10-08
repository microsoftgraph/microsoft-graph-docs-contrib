---
title: "plannerPlanAuditRecord resource type"
description: "Represents an audit record that captures information about activities and changes to Planner plans."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner plan audit record"
---
# plannerPlanAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities and changes to Planner plans. This resource provides details about plan creation, modification, deletion, and other operations performed on Microsoft Planner plans. These audit records help organizations track who made changes to plans, when those changes occurred, and what specific plan elements were affected, supporting governance and compliance requirements for collaborative work management.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerPlanAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerPlanAuditRecord"
}
```

