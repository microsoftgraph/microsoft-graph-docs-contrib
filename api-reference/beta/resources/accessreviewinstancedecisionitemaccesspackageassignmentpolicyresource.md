---
title: "accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type"
description: "Every decision item in an access review represents a principal's access to a resource. accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource represents that the decision item represents an access package assignment policy."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Every decision item in an access review represents a principal's access to a resource that is identified by an accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource object. accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource is an open type that allows for other properties to be passed in.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Resource ID|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|
|accessPackageId|String| Access Package Id |
|accessPackageDisplayName|String| Access Package Display name |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "accessPackageId": "String",
  "accessPackageDisplayName": "String"
}
```
