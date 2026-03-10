---
title: "projectAuditRecord resource type"
description: "Represents an audit record for activities and changes made within Microsoft Project."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Project audit record"
---
# projectAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities and changes made within Microsoft Project. This resource tracks actions such as project creation, modification, deletion, sharing, and permission changes. These audit records help organizations monitor project management activities for security, compliance, and operational oversight purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.projectAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.projectAuditRecord"
}
```

