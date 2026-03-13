---
title: "quarantineAuditRecord resource type"
description: "Represents an audit record for quarantine-related activities in security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Quarantine audit record"
---
# quarantineAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures quarantine-related activities in security services. This resource tracks actions performed on quarantined items, such as emails, files, or other content that has been isolated due to potential security threats. These audit records include information about quarantine decisions, releases, deletions, and policy applications, helping organizations monitor their security quarantine operations for compliance and security management purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.quarantineAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.quarantineAuditRecord"
}
```

