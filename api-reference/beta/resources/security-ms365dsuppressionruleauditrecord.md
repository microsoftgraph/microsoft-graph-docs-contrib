---
title: "mS365DSuppressionRuleAuditRecord resource type"
description: "Represents an audit record that captures information about suppression rules in Microsoft 365 Defender."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MS365D suppression rule audit record"
---
# mS365DSuppressionRuleAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about suppression rules in Microsoft 365 Defender. This resource provides details about the creation, modification, and deletion of rules used to suppress or reduce alert noise by filtering out false positives or expected activities. These audit records help security teams track changes to suppression configurations and understand their impact on alert visibility across the Microsoft 365 Defender security ecosystem.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mS365DSuppressionRuleAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mS365DSuppressionRuleAuditRecord"
}
```

