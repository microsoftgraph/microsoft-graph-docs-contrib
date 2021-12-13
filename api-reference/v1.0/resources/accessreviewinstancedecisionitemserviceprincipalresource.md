---
title: "accessReviewInstanceDecisionItemServicePrincipalResource resource type"
description: "Represents assignment to service principals. "
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemServicePrincipalResource resource type

Namespace: microsoft.graph

Represents assignment to service principals. accessReviewInstanceDecisionItemServicePrincipalResource is an open type that allows for other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| appId | String | The globally unique identifier of the application to which access has been granted. |
| displayName | String | Display name of the resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.  Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessreviewinstancedecisionitemserviceprincipalresource",
  "baseType": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessreviewinstancedecisionitemserviceprincipalresource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "appId": "String"
}
```