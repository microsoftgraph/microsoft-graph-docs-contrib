---
title: "allExcludingGroupsSubjectSet resource type"
description: "Represents a policy scope that includes all identities except members of specific excluded groups."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# allExcludingGroupsSubjectSet resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scope that includes all identities except members of the excluded groups. This type is used in the **scope** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) to exclude specific groups from policy evaluation.

Inherits from [subjectSet](../resources/subjectset.md).


## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|excludedGroups|[group](../resources/group.md) collection|The groups whose members are excluded from the policy scope. A maximum of 10 excluded groups are allowed per policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.allExcludingGroupsSubjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.allExcludingGroupsSubjectSet"
}
```

