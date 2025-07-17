---
title: "conditionalAccessRulesSatisfied resource type"
description: "Indicates the conditional access rules satisfied during an authentication event."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessRuleSatisfied resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the attributes related to applied conditional access policy or policies that are triggered by the corresponding sign-in activity.

## Properties

| Property   | Type    |Description|
|:---------------|:--------|:----------|
|conditionalAccessCondition|conditionalAccessConditions|Refers to the conditional access policy conditions that are satisfied. The possible values are: `none`, `application`, `users`, `devicePlatform`, `location`, `clientType`, `signInRisk`, `userRisk`, `time`, `deviceState`, `client`, `ipAddressSeenByAzureAD`, `ipAddressSeenByResourceProvider`, `unknownFutureValue`, `servicePrincipals`, `servicePrincipalRisk`, `authenticationFlows`, `insiderRisk`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipals`, `servicePrincipalRisk`, `authenticationFlows`, `insiderRisk`. **conditionalAccessConditions** is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.|
|ruleSatisfied|conditionalAccessRule|Refers to the conditional access policy conditions that were satisfied. The possible values are: `allApps`, `firstPartyApps`, `office365`, `appId`, `acr`, `appFilter`, `allUsers`, `guest`, `groupId`, `roleId`, `userId`, `allDevicePlatforms`, `devicePlatform`, `allLocations`, `insideCorpnet`, `allTrustedLocations`, `locationId`, `allDevices`, `deviceFilter`, `deviceState`, `unknownFutureValue`, `deviceFilterIncludeRuleNotMatched`, `allDeviceStates`, `anonymizedIPAddress`, `unfamiliarFeatures`, `nationStateIPAddress`, `realTimeThreatIntelligence`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `microsoftAdminPortals`, `deviceCodeFlow`, `accountTransfer`, `insiderRisk`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `deviceFilterIncludeRuleNotMatched`, `allDeviceStates`, `anonymizedIPAddress`, `unfamiliarFeatures`, `nationStateIPAddress`, `realTimeThreatIntelligence`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `microsoftAdminPortals`, `deviceCodeFlow`, `accountTransfer`, `insiderRisk`.|


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
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
