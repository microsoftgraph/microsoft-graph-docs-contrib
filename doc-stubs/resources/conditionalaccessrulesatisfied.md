---
title: "conditionalAccessRuleSatisfied resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# conditionalAccessRuleSatisfied resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditionalAccessCondition|conditionalAccessConditions|**TODO: Add Description**. Possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`.|
|ruleSatisfied|conditionalAccessRule|**TODO: Add Description**. Possible values are: `allApps`, `firstPartyApps`, `office365`, `appId`, `acr`, `appFilter`, `allUsers`, `guest`, `groupId`, `roleId`, `userId`, `allDevicePlatforms`, `devicePlatform`, `allLocations`, `insideCorpnet`, `allTrustedLocations`, `locationId`, `allDevices`, `deviceFilter`, `deviceState`, `unknownFutureValue`, `deviceFilterIncludeRuleNotMatched`, `allDeviceStates`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessRuleSatisfied"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessRuleSatisfied",
  "conditionalAccessCondition": "String",
  "ruleSatisfied": "String"
}
```

