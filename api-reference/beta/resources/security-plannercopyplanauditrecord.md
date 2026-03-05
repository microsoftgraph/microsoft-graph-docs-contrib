---
title: "plannerCopyPlanAuditRecord resource type"
description: "Represents an audit record that captures information about Planner plan copy operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner copy plan audit record"
---
# plannerCopyPlanAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about Planner plan copy operations. This resource provides details about when users copy Microsoft Planner plans, including information about the source plan, destination location, user who performed the action, and what content was copied. These audit records help organizations track the duplication and reuse of Planner content across teams and groups for compliance and governance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerCopyPlanAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerCopyPlanAuditRecord"
}
```

