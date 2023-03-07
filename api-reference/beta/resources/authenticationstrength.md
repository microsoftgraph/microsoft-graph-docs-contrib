---
title: "authenticationStrength resource type"
description: "Represents the custom authentication strength enforced in a conditional access policy."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationStrength resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the custom authentication strength enforced in a conditional access policy. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationStrengthId|String|Identifier of the authentication strength.|
|authenticationStrengthResult|authenticationStrengthResult|The result of the authentication strength. The possible values are: `notSet`, `skippedForProofUp`, `satisfied`, `singleChallengeRequired`, `multipleChallengesRequired`, `singleRegistrationRequired`, `multipleRegistrationsRequired`, `cannotSatisfyDueToCombinationConfiguration`, `cannotSatisfy`, `unknownFutureValue`.|
|displayName|String|The name of the authentication strength.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationStrength"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrength",
  "authenticationStrengthId": "String",
  "authenticationStrengthResult": "String",
  "displayName": "String"
}
```

