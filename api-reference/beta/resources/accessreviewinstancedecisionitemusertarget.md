---
title: "accessReviewInstanceDecisionItemUserTarget resource type"
description: "In the Azure AD access reviews feature, the `accessReviewInstanceDecisionItemUserTarget` represents the target of a review as  a user."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemUserTarget resource type

Namespace: microsoft.graph

The **accessReviewInstanceDecisionItemUserTarget** represents a user identity under review in an [accessReviewInstance](accessreviewinstance.md).

Inherits from [accessReviewInstanceDecisionItemTarget](../resources/accessreviewinstancedecisionitemtarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userDisplayName|String|Name of user.|
| userId | String | The identifier of user. |
|userPrincipalName|String|User principal name.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemUserTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String"
}
```
