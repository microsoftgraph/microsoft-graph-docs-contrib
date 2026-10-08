---
title: "m365DAADAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft 365 Defender Advanced Anomaly Detection (DAAD) operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "M365 DAAD audit record"
---
# m365DAADAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft 365 Defender Advanced Anomaly Detection (DAAD) operations. This record type documents events related to the detection, analysis, and processing of anomalous behavior patterns within the Microsoft 365 environment, providing visibility into advanced threat detection mechanisms and their findings.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.m365DAADAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.m365DAADAuditRecord"
}
```

