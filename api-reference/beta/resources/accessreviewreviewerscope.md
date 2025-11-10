---
title: "accessReviewReviewerScope resource type"
description: "Represents reviewers of an access review or user consent requests."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewReviewerScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **accessReviewReviewerScope** defines who will review instances of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) or [user consent requests](consentrequests-overview.md). 

Reviewers can be specified as a static list of users (that is, specific users, group owners, and group members) or dynamically in which every user is reviewed by their manager, group or application owners. To create a self-review (where users review their own access) in Microsoft Entra access reviews, the **reviewers** property of the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) should be an empty collection.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | The query specifying who will be the reviewer. |
| queryType | String | The type of query. Examples include `MicrosoftGraph` and `ARM`. |
| queryRoot | String | In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query, for example, `./manager`, is specified. Possible value: `decisions`. |
reviewerId | String | The identifier of the reviewer. |
|scopeType|accessReviewReviewerScopeType| The type of the reviewer scope. The possible values are: `user`, `group`, `self`, `manager`, `sponsor`, `resourceOwner`, `managerOrSponsor`, `unknownFutureValue`.|

For more about configuration options for **reviewers**, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept).


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewReviewerScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewReviewerScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String",
  "reviewerId": "String",
  "scopeType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewReviewerScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
