---
title: "accessReviewReviewer resource type"
description: "Represents a reviewer who was contacted for an access review."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewReviewer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Object representing the identities of the reviewers who were contacted to complete a review.

Inherits from [entity](entity.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| createdDateTime | DateTimeOffset | The date when the reviewer was added for the access review. |
| displayName | String | Name of reviewer. |
| id | String | Identifier of the reviewer. Inherited from [entity](entity.md). |
| userPrincipalName | String | User principal name of the user. |


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
  "createdDateTime": "String (timestamp)",
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
