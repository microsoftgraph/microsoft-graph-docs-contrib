---
title: "discoveryAuditRecord resource type"
description: "Represents an audit record that captures eDiscovery-related operations and activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Discovery audit record"
---
# discoveryAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures eDiscovery-related operations and activities. This record type documents actions taken within eDiscovery workflows, including case creation, content searches, legal holds, exports, and reviews. It provides a comprehensive audit trail of all discovery actions for legal compliance, investigation tracking, and regulatory requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.discoveryAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveryAuditRecord"
}
```

