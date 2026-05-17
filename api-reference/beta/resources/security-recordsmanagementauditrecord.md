---
title: "recordsManagementAuditRecord resource type"
description: "Represents an audit record for records management activities in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Records management audit record"
---
# recordsManagementAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures records management activities in Microsoft 365. This resource tracks actions related to the lifecycle management of organizational records, including record creation, modification, disposition, and retention policy application. These audit records help organizations demonstrate compliance with regulatory requirements for records management and provide visibility into records handling across the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.recordsManagementAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.recordsManagementAuditRecord"
}
```

