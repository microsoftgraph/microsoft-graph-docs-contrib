---
title: "microsoftTeamsRetentionLabelActionAuditRecord resource type"
description: "Represents an audit record that captures retention label activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Teams retention label action audit record"
---
# microsoftTeamsRetentionLabelActionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures retention label activities in Microsoft Teams. This record type documents events such as applying, modifying, or removing retention labels on Teams content, including messages, files, and other items, providing visibility into content lifecycle management and compliance activities within the Teams environment.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsRetentionLabelActionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsRetentionLabelActionAuditRecord"
}
```

