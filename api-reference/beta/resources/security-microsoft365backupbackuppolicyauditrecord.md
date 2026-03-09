---
title: "microsoft365BackupBackupPolicyAuditRecord resource type"
description: "Represents an audit record that captures activities related to backup policy configuration and management in Microsoft 365 Backup."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft 365 backup backup policy audit record"
---
# microsoft365BackupBackupPolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to backup policy configuration and management in Microsoft 365 Backup. This record type documents events such as creating, modifying, or deleting backup policies, changing backup schedules, adjusting retention settings, and modifying the scope of backup protection for Microsoft 365 workloads, providing visibility into how data protection strategies are configured and managed.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoft365BackupBackupPolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoft365BackupBackupPolicyAuditRecord"
}
```

