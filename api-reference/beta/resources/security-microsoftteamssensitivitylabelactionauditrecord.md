---
title: "microsoftTeamsSensitivityLabelActionAuditRecord resource type"
description: "Represents an audit record that captures sensitivity label activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Teams sensitivity label action audit record"
---
# microsoftTeamsSensitivityLabelActionAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures sensitivity label activities in Microsoft Teams. This record type documents events such as applying, changing, or removing sensitivity labels on Teams content, including teams, channels, chat messages, and files, providing visibility into information protection activities and data classification within the Teams environment.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsSensitivityLabelActionAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsSensitivityLabelActionAuditRecord"
}
```

