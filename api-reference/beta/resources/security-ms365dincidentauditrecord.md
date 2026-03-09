---
title: "mS365DIncidentAuditRecord resource type"
description: "Represents an audit record that captures information about security incidents in Microsoft 365 Defender."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MS365D incident audit record"
---
# mS365DIncidentAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about security incidents in Microsoft 365 Defender. This resource provides details about incident creation, modification, assignment, status changes, and resolution activities across the Microsoft 365 Defender platform. These audit records help security teams track the lifecycle of security incidents, understand who took which actions, and maintain a comprehensive audit trail of incident investigation and remediation processes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mS365DIncidentAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mS365DIncidentAuditRecord"
}
```

