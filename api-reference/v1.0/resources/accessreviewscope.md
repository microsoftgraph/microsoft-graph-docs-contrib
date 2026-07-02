---
title: "accessReviewScope resource type"
description: "Represents the entities that need to be reviewed in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewScope resource type

Namespace: microsoft.graph

Use **accessReviewScope** to configure what is reviewed in the following properties:
- [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md): **scope**, **instanceEnumerationScope**
- [accessReviewInstance](../resources/accessreviewinstance.md): **scope**
- [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md): **scopes**

This abstract type is inherited by [accessReviewQueryScope](../resources/accessreviewqueryscope.md), [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md), and [accessReviewReviewerScope](../resources/accessreviewreviewerscope.md).

Specifying the OData type in **scope** is highly recommended for all types but required for [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) and [accessReviewInactiveUsersQueryScope](../resources/accessreviewinactiveusersqueryscope.md).

## Properties
None.


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScope"
}
```
