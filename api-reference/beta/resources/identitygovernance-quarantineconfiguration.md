---
title: "quarantineConfiguration resource type"
description: "Represents the threshold conditions that determine when a workflow is automatically quarantined."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# quarantineConfiguration resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the threshold conditions that determine when a [workflow](../resources/identitygovernance-workflow.md) is automatically quarantined to stop it from processing more users than expected. This object is configured in the **quarantineConfiguration** property of the following resources:

- [lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)
- [workflowSetting](../resources/identitygovernance-workflowsetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[microsoft.graph.identityGovernance.quarantineCondition](../resources/identitygovernance-quarantinecondition.md) collection|The set of threshold conditions evaluated for the workflow. Each condition is either a [countBasedQuarantineCondition](../resources/identitygovernance-countbasedquarantinecondition.md) or a [percentageBasedQuarantineCondition](../resources/identitygovernance-percentagebasedquarantinecondition.md).|
|matchMode|microsoft.graph.identityGovernance.matchMode|Determines whether any or all of the **conditions** must be met for the workflow to be quarantined. The possible values are: `any`, `all`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.quarantineConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.quarantineConfiguration",
  "conditions": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.countBasedQuarantineCondition"
    }
  ],
  "matchMode": "String"
}
```
