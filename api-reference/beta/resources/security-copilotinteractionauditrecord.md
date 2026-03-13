---
title: "copilotInteractionAuditRecord resource type"
description: "Represents an audit record for interactions with Microsoft Copilot in security and compliance contexts."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Copilot interaction audit record"
---
# copilotInteractionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for interactions with Microsoft Copilot in security and compliance contexts. This resource captures audit information related to user interactions with Copilot, including queries, responses, and actions taken in security and compliance workloads.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.copilotInteractionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.copilotInteractionAuditRecord"
}
```

