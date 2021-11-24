---
title: "accessReviewInstanceDecisionItemAzureRoleResource resource type"
description: "Every decision item in an access review represents a principal's access to a resource. accessReviewInstanceDecisionItemAzureRoleResource represents that the decision item represents an azure role resource."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemAzureRoleResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Every decision item in an access review represents a principal's access to a resource. All accessReviewInstanceDecisionItemAzureRoleResource objects represent access to Azure resource roles. accessReviewInstanceDecisionItemAzureRoleResource is an open type that allows for other properties to be passed in.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Resource ID|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|
|scope|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)| Details of the scope this role is associated with|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  }
}
```
