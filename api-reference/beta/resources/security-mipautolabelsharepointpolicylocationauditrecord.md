---
title: "mipAutoLabelSharePointPolicyLocationAuditRecord resource type"
description: "Represents an audit record that captures activities related to SharePoint policy location management for automatic sensitivity labeling."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label SharePoint policy location audit record"
---
# mipAutoLabelSharePointPolicyLocationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to SharePoint policy location management for automatic sensitivity labeling. This record type documents events such as adding, removing, or modifying SharePoint sites and libraries as policy locations for auto-labeling policies, providing visibility into the scope and coverage of automated sensitivity labeling across the SharePoint environment.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSharePointPolicyLocationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSharePointPolicyLocationAuditRecord"
}
```

