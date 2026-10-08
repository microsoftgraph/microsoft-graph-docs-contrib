---
title: "mcasAlertsAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Cloud App Security (MCAS) alerts."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MCAS alerts audit record"
---
# mcasAlertsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Cloud App Security (MCAS) alerts. This record type documents events such as alert generation, investigation, remediation, and management actions taken in response to security incidents detected by MCAS, providing visibility into cloud application security incidents and their handling.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mcasAlertsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mcasAlertsAuditRecord"
}
```

