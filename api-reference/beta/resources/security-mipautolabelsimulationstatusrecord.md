---
title: "mipAutoLabelSimulationStatusRecord resource type"
description: "Represents an audit record that captures status information for auto-labeling simulation runs."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MIP auto label simulation status record"
---
# mipAutoLabelSimulationStatusRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures status information for Microsoft Information Protection (MIP) auto-labeling simulation runs. This resource provides details about the current state, progress, and execution status of simulation runs used to evaluate auto-labeling policies without actually applying labels to content. Simulation status records help administrators track and monitor the execution of auto-labeling simulations across their organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mipAutoLabelSimulationStatusRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mipAutoLabelSimulationStatusRecord"
}
```

