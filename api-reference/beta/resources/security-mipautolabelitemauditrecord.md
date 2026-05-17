---
title: "mipAutoLabelItemAuditRecord resource type"
description: "Represents an audit record that captures automatic sensitivity labeling activities for content items."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label item audit record"
---
# mipAutoLabelItemAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures automatic sensitivity labeling activities for content items. This record type documents events related to the automatic application of sensitivity labels to various content types based on content scanning and classification rules, providing a generic record of automated labeling activities across different workloads and content repositories.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelItemAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelItemAuditRecord"
}
```

