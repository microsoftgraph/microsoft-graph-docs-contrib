---
title: "projectForTheWebRoadmapAuditRecord resource type"
description: "Represents an audit record for roadmap activities in Project for the Web."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project for the web roadmap audit record"
---
# projectForTheWebRoadmapAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to roadmaps in Project for the Web. This resource tracks actions performed on project roadmaps, such as roadmap creation, modification, deletion, sharing, and permission changes. These audit records help organizations monitor roadmap management activities for security, compliance, and operational oversight purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectForTheWebRoadmapAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectForTheWebRoadmapAuditRecord"
}
```

