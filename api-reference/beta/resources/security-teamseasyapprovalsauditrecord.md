---
title: "teamsEasyApprovalsAuditRecord resource type"
description: "Represents an audit record for approval activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Teams easy approvals audit record"
---
# teamsEasyApprovalsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures approval activities in Microsoft Teams. This resource tracks workflows and actions related to approval requests, including creation, submission, approval, rejection, and delegation of approval requests. These audit records help organizations monitor approval processes for security and compliance purposes, providing visibility into decision-making workflows and accountability for approvals.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.teamsEasyApprovalsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.teamsEasyApprovalsAuditRecord"
}
```

