---
title: "policyLocationAgent resource type"
description: "Represents an agent application to which a data loss prevention policy applies."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyLocationAgent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent application to which a data loss prevention policy applies.

Used for the **applicationLocation** property of [protectedApplicationMetadata](protectedapplicationmetadata.md) and in the **locations** parameter of [tenantProtectionScopeContainer: compute](../api/tenantprotectionscopecontainer-compute.md).

Inherits from [policyLocationApplication](policylocationapplication.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|agentMetadata|[agentMetadata](agentmetadata.md)|Metadata used for agent policy scoping and evaluation. Optional.|
|value|String|The Microsoft Entra application ID or other primary identifier of the agent. Inherited from [policyLocation](policylocation.md). Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyLocationAgent"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.policyLocationAgent",
  "agentMetadata": {
    "@odata.type": "microsoft.graph.agentMetadata"
  },
  "value": "String"
}
```
