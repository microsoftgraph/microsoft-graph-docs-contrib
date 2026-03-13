---
title: "dlpEndpointAuditRecord resource type"
description: "Represents an audit record that captures Data Loss Prevention (DLP) activities and policy enforcement on endpoint devices."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "DLP endpoint audit record"
---
# dlpEndpointAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures Data Loss Prevention (DLP) activities and policy enforcement on endpoint devices. This record type documents DLP policy matches, violations, and enforcement actions taken on user devices, such as blocking file transfers, preventing unauthorized sharing, or alerting users about potential data leakage. These records help organizations monitor sensitive data handling on endpoints and ensure compliance with data protection requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dlpEndpointAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dlpEndpointAuditRecord"
}
```

