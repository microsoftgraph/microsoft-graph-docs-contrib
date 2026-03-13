---
title: "mipAutoLabelPolicyAuditRecord resource type"
description: "Represents an audit record that captures activities related to automatic sensitivity labeling policy management."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label policy audit record"
---
# mipAutoLabelPolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to automatic sensitivity labeling policy management. This record type documents events such as creating, modifying, or deleting auto-labeling policies, changing policy scope, adjusting content scanning rules, and modifying label application settings, providing visibility into how automated information protection policies are configured and managed.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelPolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelPolicyAuditRecord"
}
```

