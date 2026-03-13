---
title: "mipAutoLabelSimulationStatisticsRecord resource type"
description: "Represents an audit record that captures statistical information about auto-labeling simulation runs."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label simulation statistics record"
---
# mipAutoLabelSimulationStatisticsRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures statistical information about auto-labeling simulation runs. This record type documents aggregated metrics and analytical data from simulation mode runs for automatic sensitivity labeling, providing insights into patterns of sensitive content detection, potential label application outcomes, and policy effectiveness metrics without actually applying labels to content.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSimulationStatisticsRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSimulationStatisticsRecord"
}
```

