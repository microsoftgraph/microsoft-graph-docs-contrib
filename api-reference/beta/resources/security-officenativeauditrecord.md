---
title: "officeNativeAuditRecord resource type"
description: "Represents an audit record that captures information about activities within native Office applications."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Office native audit record"
---
# officeNativeAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities within native Office applications like Word, Excel, PowerPoint, and Outlook. This resource provides details about user interactions with files and documents in desktop Office applications, including information about security and compliance-related activities such as label applications, content protection events, and policy enforcement actions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.officeNativeAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.officeNativeAuditRecord"
}
```

