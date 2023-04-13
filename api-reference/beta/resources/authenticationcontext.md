---
title: "authenticationContext resource type"
description: "Describes the conditional access authentication context of a sign-in event."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# authenticationContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the conditional access authentication context of a sign-in event. 

For more details about authentication context in conditional access, see the [conditional access context documentation](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#authentication-context-preview). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|authenticationContextDetail|Describes how the conditional access authentication context was triggered. A value of `previouslySatisfied` means the auth context was because the user already satisfied the requirements for that authentication context in some previous authentication event. A value of `required` means the user had to meet the authentication context requirement as part of the sign-in flow. The possible values are: `required`, `previouslySatisfied`, `notApplicable`, `unknownFutureValue`.|
|id|String|The identifier of a authentication context in your tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationContext",
  "id": "String (identifier)",
  "detail": "String"
}
```

