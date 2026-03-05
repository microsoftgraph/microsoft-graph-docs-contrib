---
title: "hostedRpaAuditRecord resource type"
description: "Represents an audit record that captures activities related to hosted Robotic Process Automation (RPA)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Hosted RPA audit record"
---
# hostedRpaAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to hosted Robotic Process Automation (RPA). This record type documents actions performed by RPA processes and automations, including bot executions, workflow runs, and data processing operations. These audit records help organizations track automated processes for security monitoring, operational oversight, and ensuring that automations are operating within defined parameters and permissions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hostedRpaAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostedRpaAuditRecord"
}
```

