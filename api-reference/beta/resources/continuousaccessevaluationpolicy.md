---
title: "continuousAccessEvaluationPolicy resource type"
description: "Continuous Access Evaluation (CAE) helps in managing authentication sessions in real time. CAE allows customers to handle access to resources by supporting instant revocation events."
author: "Jerrysai-zz"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# continuousAccessEvaluationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Continuous Access Evaluation (CAE) manages authentication sessions in real time. CAE allows customers to handle access to resources by supporting instant revocation events.  For more information, see the [Continuous access evaluation](/azure/active-directory/fundamentals/concept-fundamentals-continuous-access-evaluation).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/continuousaccessevaluationpolicy-get.md)|[continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md)|Read the properties of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.|
|[Update](../api/continuousaccessevaluationpolicy-update.md)|[continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md)|Update the properties of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.|
|
## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Continuous access evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes. Read-only.|
|displayName|String| The value is always `Continuous Access Evaluation`. Read-only.|
|groups|String collection|The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty. Read-only.|
|id|String|Specifies the identifier of a [continuousAccessEvaluationPolicy](#continuousaccessevaluationpolicy-resource-type) object. Read-only.|
|isEnabled|Boolean| `true` to indicate whether continuous access evaluation should be performed; otherwise `false`. Read-only.|
|users|String collection|The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty. Read-only.|
|migrate|Boolean| `true` to indicate that the continuous access evaluation policy settings should be or has been migrated to the conditional access policy. |
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  ],
  "migrate": "Boolean"
}
```
