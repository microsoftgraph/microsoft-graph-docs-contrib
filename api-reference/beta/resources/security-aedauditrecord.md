---
title: "aedAuditRecord resource type"
description: "Represents an audit record for Advanced eDiscovery (AeD) operations."
author: "diksha27"
ms.subservice: compliance
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "AED audit record"
---
# aedAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Advanced eDiscovery (AeD) operations. This resource captures information about eDiscovery activities, including case management, content searches, review sets, and export operations within Microsoft Purview.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aedAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.aedAuditRecord"
}
```

