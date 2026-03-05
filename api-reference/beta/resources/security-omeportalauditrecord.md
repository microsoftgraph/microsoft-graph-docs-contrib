---
title: "omePortalAuditRecord resource type"
description: "Represents an audit record that captures information about activities in the Office Message Encryption portal."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "OME portal audit record"
---
# omePortalAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities in the Office Message Encryption (OME) portal. This resource provides details about user interactions with encrypted messages, including when recipients access encrypted content, authenticate to view protected messages, and perform actions within the OME web portal. These audit records help organizations track the usage and effectiveness of their email encryption policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md). For more information about audit activities, see [Office 365 Management Activity API schema](https://learn.microsoft.com/en-us/office/office-365-management-api/office-365-management-activity-api-schema).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.omePortalAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.omePortalAuditRecord"
}
```

