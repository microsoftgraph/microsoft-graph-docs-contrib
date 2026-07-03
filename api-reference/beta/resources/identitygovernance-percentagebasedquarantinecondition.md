---
title: "percentageBasedQuarantineCondition resource type"
description: "Represents a quarantine condition based on the percentage of users a workflow run processes."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# percentageBasedQuarantineCondition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [quarantineCondition](../resources/identitygovernance-quarantinecondition.md) that quarantines a [workflow](../resources/identitygovernance-workflow.md) when a single run would process more than a specified percentage of in-scope users. This condition is configured in the **conditions** property of a [quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md).

Inherits from [quarantineCondition](../resources/identitygovernance-quarantinecondition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|percentage|Int32|The maximum percentage of in-scope users a workflow run can process before the workflow is quarantined.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.percentageBasedQuarantineCondition",
  "baseType": "microsoft.graph.identityGovernance.quarantineCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.percentageBasedQuarantineCondition",
  "percentage": "Integer"
}
```
