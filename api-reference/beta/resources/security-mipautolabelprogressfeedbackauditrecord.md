---
title: "mipAutoLabelProgressFeedbackAuditRecord resource type"
description: "Represents an audit record that captures progress feedback for automatic sensitivity labeling processes."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label progress feedback audit record"
---
# mipAutoLabelProgressFeedbackAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures progress feedback for automatic sensitivity labeling processes. This record type documents interim status updates and progress metrics during the execution of auto-labeling jobs, providing visibility into the ongoing performance and throughput of content scanning and labeling operations, including statistics about items processed, labels applied, and any issues encountered.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelProgressFeedbackAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelProgressFeedbackAuditRecord"
}
```

