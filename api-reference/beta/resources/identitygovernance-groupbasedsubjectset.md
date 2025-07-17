---
title: "groupBasedSubjectSet resource type"
description: "Defines the group that is the scope of a lifecycle workflow membershipChangeTrigger configuration."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/16/2024
---

# groupBasedSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the group that is the scope of a lifecycle workflow [membershipChangeTrigger](../resources/identitygovernance-membershipchangetrigger.md) configuration.

Inherits from [microsoft.graph.subjectSet](../resources/subjectset.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groups|[microsoft.graph.group](../resources/group.md) collection|The specific group a user is interacting with in a [membershipChangeTrigger](identitygovernance-membershipchangetrigger.md) workflow.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.groupBasedSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.groupBasedSubjectSet"
}
```

