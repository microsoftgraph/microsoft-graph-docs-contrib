---
title: "oneDriveAuditRecord resource type"
description: "Represents an audit record that captures information about activities in OneDrive for Business."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "OneDrive audit record"
---
# oneDriveAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities in OneDrive for Business. This resource provides details about file operations, sharing events, security-related actions, and compliance activities performed on content stored in OneDrive. These audit records help organizations track who accessed, modified, shared, or deleted files, enabling comprehensive monitoring of cloud storage activity for security and compliance purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.oneDriveAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.oneDriveAuditRecord"
}
```

