---
title: "customClaimCondition resource type"
description: "A claim condition that is associated with a particular claim configuration. The claim configuration is only be applied if the condition is met."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# customClaimCondition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A claim condition that is associated with a particular claim configuration. The claim configuration is only be applied if the condition is met.

Inherits from [customClaimConditionBase](../resources/customclaimconditionbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|memberOf|String collection|A list of groups (guids) to which the user/application must be a member for this condition to be applied.|
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
