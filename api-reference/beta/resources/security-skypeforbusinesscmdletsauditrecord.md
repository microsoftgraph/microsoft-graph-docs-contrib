---
title: "skypeForBusinessCmdletsAuditRecord resource type"
description: "Represents an audit record for Skype for Business PowerShell cmdlet operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Skype for Business cmdlets audit record"
---
# skypeForBusinessCmdletsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Skype for Business PowerShell cmdlet operations. This resource tracks administrative actions performed through PowerShell cmdlets to configure and manage Skype for Business Online services, including user management, policy configurations, and service settings. These audit records help organizations monitor administrative activities that affect Skype for Business services, providing accountability and traceability for configuration changes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.skypeForBusinessCmdletsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.skypeForBusinessCmdletsAuditRecord"
}
```

