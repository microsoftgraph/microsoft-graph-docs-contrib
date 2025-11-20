---
title: "accessReviewInstanceDecisionItemResource resource type"
description: "Every decision item in an access review represents a principal's access to a resource. accessReviewInstanceDecisionItemResource represents the resource associated with the decision item."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewInstanceDecisionItemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Every decision item in an access review represents a principal's access to a resource. An **accessReviewInstanceDecisionItemResource** object identifies the resource.

[accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionitemresource.md) is an open type that allows for other properties to be passed in and is the base type for the following resources: [accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource](accessreviewinstancedecisionitemaccesspackageassignmentpolicyresource.md), [accessReviewInstanceDecisionItemAzureRoleResource](accessreviewinstancedecisionitemazureroleresource.md), [accessReviewInstanceDecisionItemServicePrincipalResource](accessreviewinstancedecisionitemserviceprincipalresource.md), and [accessReviewInstanceDecisionItemCustomDataProvidedResource](accessReviewInstanceDecisionItemCustomDataProvidedResource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| Description of the resource |
|displayName|String|Display name of the resource|
|id|String|Resource ID|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`, and `CustomDataProvidedResource`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "description": "String"
}
```
