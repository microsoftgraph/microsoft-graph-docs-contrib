---
title: "quarantineDetails resource type"
description: "Represents the read-only quarantine state of a workflow."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# quarantineDetails resource type

Namespace: microsoft.graph.identityGovernance

Represents the read-only quarantine state of a [workflow](../resources/identitygovernance-workflow.md). This object is returned in the **quarantineDetails** property of a workflow when the workflow is automatically quarantined because a run exceeded the threshold conditions defined in its [quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|quarantinedDateTime|DateTimeOffset|The date and time when the workflow was quarantined.|
|quarantineReason|String|The reason the workflow was quarantined.|
|quarantineType|microsoft.graph.identityGovernance.quarantineType|The type of threshold condition that caused the workflow to be quarantined. The possible values are: `notQuarantined`, `countBasedThresholdExceeded`, `percentageBasedThresholdExceeded`, `multipleConditionsExceeded`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.quarantineDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.quarantineDetails",
  "quarantinedDateTime": "String (timestamp)",
  "quarantineType": "String",
  "quarantineReason": "String"
}
```
