---
title: "accessReviewInstanceDecisionItemResource resource type"
description: "Represents the resource associated with the decision item."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemResource resource type

Namespace: microsoft.graph

Every decision item in an access review represents a principal's access to a resource that is identified by an accessReviewInstanceDecisionItemResource object. accessReviewInstanceDecisionItemResource is an open type that allows for other properties to be passed in.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Identifier of the resource|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String"
}
```
