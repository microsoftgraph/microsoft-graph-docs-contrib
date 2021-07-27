---
title: "accessReviewReviewer resource type"
description: "Represents a contacted reviewer for an access review."
author: "shubhamguptacal"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewReviewer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

In the access review process, reviewers(who are users) are contacted to do the review. Based on the reviewers configuration(groups, managers, etc.), the expanded list of users is constructed and those reviewers are contacted to do the review when the review starts. This navigation link returns a collection of those contacted reviewers. Note that this is different from the reviewers property above in the sense that the reviewers property stores the configuration of reviewers whereas the "contactedReviewers" propertys is returns the expanded collection of users based on that configuration. For example, one might configure owners of group G1[with owners U1,U2], members of group G2[with members U3,U4] and users U5,U6 in the "reviewers" property. The "contactedReviewers" property will return [U1,U2,U3,U4,U5,U6].

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| id | String | Id of the reviewer |
| displayName | String | Name of reviewer |
| userPrincipalName | String | User principal name of the user |
| createdDateTime | DateTimeOffset | Date when the reviewer was added |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewReviewer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewReviewer",
  "id": "String",
  "displayName": "String",
  "userPrincipalName": "String",
  "createdDateTime": "DateTimeOffset"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewReviewer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
