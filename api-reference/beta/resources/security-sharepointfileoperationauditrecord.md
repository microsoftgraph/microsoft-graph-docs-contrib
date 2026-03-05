---
title: "sharePointFileOperationAuditRecord resource type"
description: "Represents an audit record for file operations in SharePoint and OneDrive."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint file operation audit record"
---
# sharePointFileOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures file operations in SharePoint and OneDrive. This resource tracks activities related to files and documents, including uploads, downloads, views, edits, deletions, moves, and copies. These audit records help organizations monitor document lifecycle activities for security analysis, compliance, and data governance purposes, providing visibility into how content is being accessed and modified across the environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointFileOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointFileOperationAuditRecord"
}
```

