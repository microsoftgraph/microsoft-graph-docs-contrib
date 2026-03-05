---
title: "microsoft365BackupRestoreTaskAuditRecord resource type"
description: "Represents an audit record that captures activities related to restore task operations in Microsoft 365 Backup."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft 365 backup restore task audit record"
---
# microsoft365BackupRestoreTaskAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to restore task operations in Microsoft 365 Backup. This record type documents events such as the creation, execution, and completion of bulk restore operations or scheduled restore tasks, including information about the scope of the restore, target location, time range of data being restored, and the overall status of the restore task.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoft365BackupRestoreTaskAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoft365BackupRestoreTaskAuditRecord"
}
```

