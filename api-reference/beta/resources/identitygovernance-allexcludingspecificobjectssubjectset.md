---
title: "allExcludingSpecificObjectsSubjectSet resource type"
description: "Represents a policy scope that includes all identities except specific excluded directory objects."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# allExcludingSpecificObjectsSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scope that includes all identities except the excluded directory objects. This type is used in the **scope** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) to exclude specific objects from policy evaluation.

Inherits from [subjectSet](../resources/subjectset.md).


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|excludedObjects|[directoryObject](../resources/directoryobject.md) collection|The directory objects that are excluded from the policy scope.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.allExcludingSpecificObjectsSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.allExcludingSpecificObjectsSubjectSet"
}
```

