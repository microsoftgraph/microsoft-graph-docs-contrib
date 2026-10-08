---
title: "largeContentMetadataAuditRecord resource type"
description: "Represents an audit record that captures metadata processing activities for large content items in the organization."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Large content metadata audit record"
---
# largeContentMetadataAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures metadata processing activities for large content items in the organization. This record type documents events related to the indexing, scanning, or classification of large files or content repositories, providing visibility into how security and compliance policies are applied to substantial data assets.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.largeContentMetadataAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.largeContentMetadataAuditRecord"
}
```

