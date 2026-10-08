---
title: "publicFolderAuditRecord resource type"
description: "Represents an audit record for activities related to Exchange public folders."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Public folder audit record"
---
# publicFolderAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Exchange public folders. This resource tracks actions performed on public folders, such as folder creation, modification, deletion, permission changes, and content management. These audit records help organizations monitor public folder management activities for security, compliance, and operational oversight purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.publicFolderAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.publicFolderAuditRecord"
}
```

