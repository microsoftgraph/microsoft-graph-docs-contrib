---
title: "complianceDlpBaseAuditRecord resource type"
description: "Represents a base audit record for Microsoft Purview Data Loss Prevention (DLP) events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Purview DLP base audit record"
---
# complianceDlpBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base audit record for Microsoft Purview Data Loss Prevention (DLP) events. This resource serves as the foundation for all DLP audit record types, providing common properties shared across DLP-related audit activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.complianceDlpBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.complianceDlpBaseAuditRecord"
}
```

