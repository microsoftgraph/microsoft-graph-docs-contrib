---
title: "securityComplianceCenterEOPCmdletAuditRecord resource type"
description: "Represents an audit record for Exchange Online Protection (EOP) cmdlet executions in the Security & Compliance Center."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Security compliance center EOP cmdlet audit record"
---
# securityComplianceCenterEOPCmdletAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Exchange Online Protection (EOP) cmdlet executions in the Security & Compliance Center. This resource tracks PowerShell cmdlet operations performed by administrators to configure and manage email security settings, policies, and threat protection features. These audit records help organizations monitor administrative activities that affect email security controls, providing accountability and traceability for security-related configuration changes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityComplianceCenterEOPCmdletAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityComplianceCenterEOPCmdletAuditRecord"
}
```

