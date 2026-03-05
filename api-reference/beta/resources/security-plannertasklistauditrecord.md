---
title: "plannerTaskListAuditRecord resource type"
description: "Represents an audit record that captures information about task listing operations in Microsoft Planner."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner task list audit record"
---
# plannerTaskListAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about task listing operations in Microsoft Planner. This resource provides details about requests to retrieve collections of tasks, including information about who accessed task listings, what filters or parameters were used, and which tasks were included in the results. These audit records help organizations track who is viewing and accessing task information across the organization for security and compliance monitoring purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerTaskListAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerTaskListAuditRecord"
}
```

