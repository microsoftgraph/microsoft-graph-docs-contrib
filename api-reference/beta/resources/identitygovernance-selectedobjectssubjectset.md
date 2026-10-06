---
title: "selectedObjectsSubjectSet resource type"
description: "Represents a policy scope that includes only specific selected directory objects."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# selectedObjectsSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scope that includes only the selected directory objects. This type is used in the **scope** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) to target specific objects for policy evaluation.

Inherits from [subjectSet](../resources/subjectset.md).


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|inScopeObjects|[directoryObject](../resources/directoryobject.md) collection|The directory objects that are included in the policy scope.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.selectedObjectsSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.selectedObjectsSubjectSet"
}
```

