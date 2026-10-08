---
title: "accessReviewInstanceDecisionItemCustomDataProvidedResource resource type"
description: "Represents customer-provided resources for which access is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/31/2026
---

# accessReviewInstanceDecisionItemCustomDataProvidedResource resource type

Namespace: microsoft.graph

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **resource** property can contain an **accessReviewInstanceDecisionItemCustomDataProvidedResource** object for an external customer-provided resource. This open type allows other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customData|String|Custom data to include with the decision.|
|description|String|The description of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|displayName|String|The display name of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|id|String|The identifier of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|scopeDisplayName|String|The name of the scope for the decision.|
|scopeId|String|The identifier of the scope for the decision.|
|type|String|The type of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemCustomDataProvidedResource"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemCustomDataProvidedResource",
  "id": "String",
  "displayName": "String",
  "type": "String",
  "description": "String",
  "customData": "String",
  "scopeId": "String",
  "scopeDisplayName": "String"
}
```
