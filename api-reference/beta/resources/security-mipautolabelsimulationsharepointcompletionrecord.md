---
title: "mipAutoLabelSimulationSharePointCompletionRecord resource type"
description: "Represents an audit record that captures completion information for SharePoint auto-labeling simulation runs."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label simulation SharePoint completion record"
---
# mipAutoLabelSimulationSharePointCompletionRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures completion information for SharePoint auto-labeling simulation runs. This record type documents the final results and summary statistics of simulation mode runs for automatic sensitivity labeling in SharePoint, providing insights into what would happen if auto-labeling policies were applied in production without actually applying the labels, helping administrators evaluate policy effectiveness and potential impact.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSimulationSharePointCompletionRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSimulationSharePointCompletionRecord"
}
```

