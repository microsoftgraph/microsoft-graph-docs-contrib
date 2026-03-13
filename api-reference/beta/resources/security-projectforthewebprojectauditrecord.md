---
title: "projectForTheWebProjectAuditRecord resource type"
description: "Represents an audit record for project-level activities in Project for the Web."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project for the web project audit record"
---
# projectForTheWebProjectAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures project-level activities in Project for the Web. This resource tracks actions performed on projects such as project creation, deletion, modification, sharing, and permission changes. These audit records help organizations monitor project management activities for security, compliance, and operational insights specific to the Project for the Web service.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectForTheWebProjectAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectForTheWebProjectAuditRecord"
}
```

