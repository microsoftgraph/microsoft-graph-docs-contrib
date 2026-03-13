---
title: "plannerTenantSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to tenant-level Planner settings."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner tenant settings audit record"
---
# plannerTenantSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to tenant-level Planner settings. This resource provides details about modifications to organization-wide configurations for Microsoft Planner, including service enablement, feature toggles, and global policy settings. These audit records help administrators track who modified tenant-wide Planner settings, when those changes occurred, and what specific configurations were affected.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerTenantSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerTenantSettingsAuditRecord"
}
```

