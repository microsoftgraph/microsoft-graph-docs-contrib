---
title: "microsoft365BackupBackupItemAuditRecord resource type"
description: "Represents an audit record that captures activities related to individual items being backed up in Microsoft 365 Backup."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft 365 backup backup item audit record"
---
# microsoft365BackupBackupItemAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to individual items being backed up in Microsoft 365 Backup. This record type documents events such as backup operations for specific files, emails, SharePoint documents, and other content items within Microsoft 365, including details about backup timing, content type, storage location, and success or failure status.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoft365BackupBackupItemAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoft365BackupBackupItemAuditRecord"
}
```

