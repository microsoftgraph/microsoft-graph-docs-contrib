---
title: "continuousAccessEvaluationPolicy resource type"
description: "Continuous Access Evaluation (CAE) helps in managing authentication sessions in real time. CAE allows customers to handle access to resources by supporting instant revocation events."
author: "jevenk"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# continuousAccessEvaluationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Continuous Access Evaluation (CAE) is Microsoft’s new approach to managing authentication sessions in real time. CAE allows customers to handle access to resources by supporting instant revocation events among other resilience and cost saving measures.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get continuousAccessEvaluationPolicy](../api/continuousaccessevaluationpolicy-get.md)|[continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md)|Read the properties of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.|
|[Update continuousAccessEvaluationPolicy](../api/continuousaccessevaluationpolicy-update.md)|[continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md)|Update the properties of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.|
|
## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Continuous access evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes. Read-only.|
|displayName|String|Continuous Access Evaluation. Read-only.|
|groups|String collection|The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty.|
|id|String|Specifies the identifier of a continuousAccessEvaluationPolicy object. Read-only.|
|isEnabled|Boolean|True to indicate if continous access evalulation should be performed.|
|users|String collection|The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.continuousAccessEvaluationPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.continuousAccessEvaluationPolicy",
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "isEnabled": "Boolean",
  "users": [
    "String"
  ],
  "groups": [
    "String"
  ]
}
```

