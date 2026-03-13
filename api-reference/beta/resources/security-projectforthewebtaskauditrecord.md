---
title: "projectForTheWebTaskAuditRecord resource type"
description: "Represents an audit record for task-related activities in Project for the Web."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project for the web task audit record"
---
# projectForTheWebTaskAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures task-related activities in Project for the Web. This resource tracks actions performed on individual tasks within a project, such as task creation, modification, deletion, assignment changes, and status updates. These audit records help organizations monitor task management activities for security, compliance, and operational oversight purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectForTheWebTaskAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectForTheWebTaskAuditRecord"
}
```

