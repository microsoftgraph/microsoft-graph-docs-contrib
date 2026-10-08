---
title: "microsoft365BackupRestoreItemAuditRecord resource type"
description: "Represents an audit record that captures activities related to restoring individual items from Microsoft 365 Backup."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft 365 backup restore item audit record"
---
# microsoft365BackupRestoreItemAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to restoring individual items from Microsoft 365 Backup. This record type documents events such as restoring specific files, emails, SharePoint documents, and other content items from backup, including details about the restore operation, the item being restored, the user performing the action, and the outcome of the restore operation.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoft365BackupRestoreItemAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoft365BackupRestoreItemAuditRecord"
}
```

