---
title: "countBasedQuarantineCondition resource type"
description: "Represents a quarantine condition based on the number of users a workflow run processes."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# countBasedQuarantineCondition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [quarantineCondition](../resources/identitygovernance-quarantinecondition.md) that quarantines a [workflow](../resources/identitygovernance-workflow.md) when a single run would process more than a specified number of users. This condition is configured in the **conditions** property of a [quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md).

Inherits from [quarantineCondition](../resources/identitygovernance-quarantinecondition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|threshold|Int64|The maximum number of users a workflow run can process before the workflow is quarantined.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.countBasedQuarantineCondition",
  "baseType": "microsoft.graph.identityGovernance.quarantineCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.countBasedQuarantineCondition",
  "threshold": "Integer"
}
```
