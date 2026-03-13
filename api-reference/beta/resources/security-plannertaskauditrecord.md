---
title: "plannerTaskAuditRecord resource type"
description: "Represents an audit record that captures information about activities and changes to Planner tasks."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner task audit record"
---
# plannerTaskAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities and changes to Planner tasks. This resource provides details about task creation, modification, assignment, completion, and deletion operations in Microsoft Planner. These audit records help organizations track who made changes to tasks, when those changes occurred, and what specific task elements were affected, supporting work activity monitoring and compliance requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerTaskAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerTaskAuditRecord"
}
```

