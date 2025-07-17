---
title: "customClaimCondition resource type"
description: "Represents a claim condition associated with a particular claim configuration. The claim configuration is only applied if the condition is met."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 06/11/2024
---

# customClaimCondition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a claim condition associated with a particular claim configuration. The claim configuration is only applied if the condition is met.

Inherits from [customClaimConditionBase](../resources/customclaimconditionbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|memberOf|String collection|A list of groups (GUIDs) to which the user/application must be a member for this condition to be applied.|
|userType|claimConditionUserType|The type of user this condition applies to. The possible values are: `any`, `members`, `allGuests`, `aadGuests`, `externalGuests`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customClaimCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaimCondition",
  "userType": "String",
  "memberOf": [
    "String"
  ]
}
```
