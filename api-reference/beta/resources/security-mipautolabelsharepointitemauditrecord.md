---
title: "mipAutoLabelSharePointItemAuditRecord resource type"
description: "Represents an audit record that captures automatic sensitivity labeling activities for SharePoint items."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label SharePoint item audit record"
---
# mipAutoLabelSharePointItemAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures automatic sensitivity labeling activities for SharePoint items. This record type documents events related to the automatic application of sensitivity labels to SharePoint content such as documents, lists, and libraries based on content scanning and classification rules, providing visibility into how sensitive information in SharePoint is being identified and protected through automated mechanisms.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSharePointItemAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSharePointItemAuditRecord"
}
```

