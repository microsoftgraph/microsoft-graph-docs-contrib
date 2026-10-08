---
title: "powerPagesSiteAuditRecord resource type"
description: "Represents an audit record that captures information about activities in Power Pages sites."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Pages site audit record"
---
# powerPagesSiteAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities in Power Pages sites. This resource provides details about site creation, content updates, configuration changes, and user interactions with Microsoft Power Pages web sites. These audit records help organizations track changes to their low-code websites, monitor portal activity, and ensure compliance with governance policies for externally-facing web content.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPagesSiteAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPagesSiteAuditRecord"
}
```

