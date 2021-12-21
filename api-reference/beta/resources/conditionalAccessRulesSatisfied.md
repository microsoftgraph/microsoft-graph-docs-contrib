---
title: "conditionalAccessRulesSatisfied resource type"
description: "Indicates the conditional access rules satisified during an authentication event."
ms.localizationpriority: medium
author: "besiler"
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# appliedConditionalAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity.

## Properties

| Property   | Type	|Description|
|:---------------|:--------|:----------|
|conditionalAccessCondition|conditionalAccessConditions|Refers to the conditional access policy conditions that are satisfied. Possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`.|
|ruleSatisfied|conditionalAccessRule|Refers to the conditional access policy conditions that were satisfied. Possible values are: `allApps`, `firstPartyApps`, `office365`, `appId`, `acr`, `appFilter`, `allUsers`, `guest`, `groupId`, `roleId`, `userId`, `allDevicePlatforms`, `devicePlatform`, `allLocations`, `insideCorpnet`, `allTrustedLocations`, `locationId`, `allDevices`, `deviceFilter`, `deviceState`, `deviceFilterIncludeRuleNotMatched`, `allDeviceStates`, `unknownFutureValue`.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.conditionalAccessRulesSatisfied"
}-->

```json
{
  "conditionalAccessCondition": "String",
  "ruleSatisfied": "String",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessRulesSatisfied resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
