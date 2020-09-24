---
title: "accessReviewInstanceDecisionItemTarget resource type"
description: "In the Azure AD access reviews feature, the `accessReviewInstanceDecisionItemTarget` represents the target of a review as either a user target or a service principal target.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewInstanceDecisionItemTarget** represents a base class for different types of review targets, each one with its own specific properties. The supported target types are as follows: `accessReviewInstanceDecisionItemUserTarget` and `accessReviewInstanceDecisionItemServicePrincipalTarget`.


## Properties of accessReviewInstanceDecisionItemUserTarget
The **accessReviewInstanceDecisionItemUserTarget** represents a user being reviewed.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `userID`          |`String`  | The ID of the user object whose access is being reviewed. |
| `userDisplayName`          |`String`  | The display name of the user whose access is being reviewed. |
| `userPrincipalName`          |`String`  | User Principal Name for the user object. |

## Properties of accessReviewInstanceDecisionItemServicePrincipalTarget
The **accessReviewInstanceDecisionItemServicePrincipalTarget** represents a service principal being reviewed.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `servicePrincipalID`          |`String`  | The ID of the service principal whose access is being reviewed. |
| `servicePrincipalDisplayName`          |`String`  | The display name of the service principal whose access is being reviewed. |
| `appId`          |`String`  | The appId for the service principal entity being reviewed. |



## JSON representation of accessReviewInstanceDecisionItemUserTarget

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemUserTarget"
}-->

```json
{
 "userID": "string (identifier)",
 "userDisplayName": "string",
 "userPrincipalName": "string"
}
```
## JSON representation of accessReviewInstanceDecisionItemServicePrincipalTarget

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemServicePrincipalTarget"
}-->

```json
{
 "servicePrincipalID": "string (identifier)",
 "servicePrincipalDisplayName": "string",
 "appID": "string"
}
```



<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstanceDecisionItemTarget resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
