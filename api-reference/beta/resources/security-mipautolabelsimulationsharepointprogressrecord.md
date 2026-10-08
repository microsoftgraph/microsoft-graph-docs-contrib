---
title: "mipAutoLabelSimulationSharePointProgressRecord resource type"
description: "Represents an audit record that captures progress information for SharePoint auto-labeling simulation runs."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label simulation SharePoint progress record"
---
# mipAutoLabelSimulationSharePointProgressRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures progress information for SharePoint auto-labeling simulation runs. This record type documents interim status updates and progress metrics during the execution of simulation mode runs for automatic sensitivity labeling in SharePoint, providing visibility into the ongoing performance and throughput of content scanning and simulated labeling operations without actually applying the labels.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSimulationSharePointProgressRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSimulationSharePointProgressRecord"
}
```

