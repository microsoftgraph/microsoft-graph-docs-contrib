---
title: "informationBarrierPolicyApplicationAuditRecord resource type"
description: "Represents an audit record that captures information barrier policy application events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Information barrier policy application audit record"
---
# informationBarrierPolicyApplicationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information barrier policy application events. This record type documents when information barrier policies are applied to users or groups, including details about which policies were applied, by whom, and the affected users or segments. Information barriers help organizations restrict communication and collaboration between groups to avoid conflicts of interest or protect sensitive information, and these audit records help track their enforcement.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.informationBarrierPolicyApplicationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.informationBarrierPolicyApplicationAuditRecord"
}
```

