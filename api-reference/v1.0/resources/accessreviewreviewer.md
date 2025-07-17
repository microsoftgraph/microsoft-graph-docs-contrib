---
title: "accessReviewReviewer resource type"
description: "Represents a reviewer who was contacted for an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewReviewer resource type

Namespace: microsoft.graph

Represents the identities of the reviewers who were contacted to complete a review.

Inherits from [entity](entity.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| createdDateTime | DateTimeOffset | The date when the reviewer was added for the access review. |
| displayName | String | Name of reviewer. |
| id | String | Identifier of the reviewer. Inherited from [entity](entity.md). |
| userPrincipalName | String | User principal name of the reviewer. |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewReviewer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewReviewer",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String",
  "userPrincipalName": "String"
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
