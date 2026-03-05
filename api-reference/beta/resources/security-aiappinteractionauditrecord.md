---
title: "aiAppInteractionAuditRecord resource type"
description: "Represents an audit record for AI application interaction events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AI app interaction audit record"
---
# aiAppInteractionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for AI application interaction events. This resource captures information about user interactions with AI-powered applications in the Microsoft 365 ecosystem.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aiAppInteractionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aiAppInteractionAuditRecord"
}
```

