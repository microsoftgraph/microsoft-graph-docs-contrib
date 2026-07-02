---
title: "accessReviewInstanceDecisionItemResource resource type"
description: "Represents the resource associated with the decision item."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewInstanceDecisionItemResource resource type

Namespace: microsoft.graph

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **resource** property identifies the resource associated with the decision item.

An [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md) object is an open type that allows other properties to be passed in and is the base type for the following resources:
- [accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource](../resources/accessreviewinstancedecisionitemaccesspackageassignmentpolicyresource.md)
- [accessReviewInstanceDecisionItemAzureRoleResource](../resources/accessreviewinstancedecisionitemazureroleresource.md)
- [accessReviewInstanceDecisionItemServicePrincipalResource](../resources/accessreviewinstancedecisionitemserviceprincipalresource.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the resource|
|id|String|Identifier of the resource|
|type|String|Type of resource. Types include: `Group`, `ServicePrincipal`, `DirectoryRole`, `AzureRole`, `AccessPackageAssignmentPolicy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemResource",
  "displayName": "String",
  "id": "String (identifier)",
  "type": "String"
}
```
