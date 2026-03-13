---
title: "msdeRolesSettingsAuditRecord resource type"
description: "Represents an audit record that captures information about changes to role-based access control settings in Microsoft Defender for Endpoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MSDE roles settings audit record"
---
# msdeRolesSettingsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about changes to role-based access control settings in Microsoft Defender for Endpoint (MDE). This resource provides details about modifications to security roles, permissions assignments, and access controls that determine who can perform specific actions within the MDE portal. These audit records help administrators track changes to the security role structure, understand who made the changes, and maintain a comprehensive audit trail of access control modifications.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.msdeRolesSettingsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.msdeRolesSettingsAuditRecord"
}
```

