---
title: "accessReviewInstanceDecisionItemCustomDataProvidedResource resource type"
description: "Represents custom data provided resources for which access is represented through an accessReviewInstanceDecisionItem object."
author: "dotnet-enthusiast"
ms.date: 04/01/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemCustomDataProvidedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents an external customer provided resource for which access is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemCustomDataProvidedResource** is an open type that allows for other properties to be passed in.


Inherits from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customData|String|Custom data to include with the decision.|
|description|String|The description of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|displayName|String|The display name of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|id|String|The identifier of the custom data provided resource. Inherited from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).|
|scopeDisplayName|String|The name of the scope for the decision.|
|scopeId|String|The id of the scope for the decision.|
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
``` json
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

