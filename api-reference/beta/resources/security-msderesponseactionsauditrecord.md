---
title: "msdeResponseActionsAuditRecord resource type"
description: "Represents an audit record that captures information about response actions performed in Microsoft Defender for Endpoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MSDE response actions audit record"
---
# msdeResponseActionsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about response actions performed in Microsoft Defender for Endpoint (MDE). This resource provides details about remediation and containment actions taken on devices, such as isolating machines, collecting investigation packages, running anti-virus scans, or removing files. These audit records help security teams track who initiated specific response actions, when they were performed, and the outcomes of those actions during security incident response.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.msdeResponseActionsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.msdeResponseActionsAuditRecord"
}
```

