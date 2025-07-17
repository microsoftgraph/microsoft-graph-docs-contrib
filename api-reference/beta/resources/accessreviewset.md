---
title: "accessReviewSet resource type"
description: "Container for the base resources that expose the access reviews API and features. Currently exposes only the accessReviewScheduleDefinition resource."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for the base resources that expose the access reviews API and features. Currently exposes only the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) relationship.

Inherits from [entity](entity.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|decisions|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection| Represents a Microsoft Entra access review decision on an instance of a review.|
|definitions|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection| Represents the template and scheduling for an access review. |
|historyDefinitions|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) collection| Represents a collection of access review history data and the scopes used to collect that data.|
|policy|[accessReviewPolicy](../resources/accessreviewpolicy.md)| Resource that enables administrators to manage directory-level access review policies in their tenant.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewSet"
}
```
