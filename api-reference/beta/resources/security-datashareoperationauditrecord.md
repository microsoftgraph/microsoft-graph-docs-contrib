---
title: "dataShareOperationAuditRecord resource type"
description: "Represents an audit record that captures data sharing operations between systems or organizations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Data share operation audit record"
---
# dataShareOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures data sharing operations between systems or organizations. This record type documents data sharing activities, including the parties involved in the share, the data that was shared, the methods used, and whether the sharing operation complied with organizational policies. It helps organizations track data movement and maintain compliance with data protection regulations.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dataShareOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataShareOperationAuditRecord"
}
```

