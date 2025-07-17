---
title: "authenticationContext resource type"
description: "Describes the conditional access authentication context of a sign-in event."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# authenticationContext resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the conditional access authentication context of a sign-in event. 

For more information about authentication context in conditional access, see the [conditional access context documentation](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#authentication-context-preview). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|authenticationContextDetail|Describes how the conditional access authentication context was triggered. A value of `previouslySatisfied` means the auth context was because the user already satisfied the requirements for that authentication context in some previous authentication event. A value of `required` means the user had to meet the authentication context requirement as part of the sign-in flow. The possible values are: `required`, `previouslySatisfied`, `notApplicable`, `unknownFutureValue`.|
|id|String|The identifier of an authentication context in your tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

