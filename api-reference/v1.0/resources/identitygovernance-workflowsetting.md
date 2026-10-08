---
title: "workflowSetting resource type"
description: "Represents the configurable settings of a workflow or workflow version."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowSetting resource type

Namespace: microsoft.graph.identityGovernance

Represents the configurable settings of a [workflow](../resources/identitygovernance-workflow.md) or a [workflowVersion](../resources/identitygovernance-workflowversion.md). This object is configured in the **settings** property of those resources.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|quarantineConfiguration|[microsoft.graph.identityGovernance.quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md)|The threshold configuration that automatically halts the workflow when its conditions are met.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowSetting",
  "quarantineConfiguration": {
    "@odata.type": "microsoft.graph.identityGovernance.quarantineConfiguration"
  }
}
```
