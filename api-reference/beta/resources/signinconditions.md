---
title: "signInConditions resource type"
description: "Represents sign-in parameters of the identity that is authenticating"
author: "kvenkit"
ms.date: 03/21/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# signInConditions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents sign-in parameters of the identity that is authenticating


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationFlow|[authenticationFlow](../resources/authenticationflow.md)| Type of authentication flow. Possible values are: `deviceCodeFlow` or `authenticationTransfer`.|
|clientAppType|conditionalAccessClientApp|Client application type.The possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`, `unknownFutureValue`. Default value is `all`|
|country|String|Country from where the identity is authenticating|
|deviceInfo|[deviceInfo](../resources/deviceinfo.md)|Information about the device used for the sign-in|
|devicePlatform|conditionalAccessDevicePlatform|Device platform.The possible values are: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `all`, `unknownFutureValue`, `linux`. Default value is `android`|
|insiderRiskLevel|insiderRiskLevel|Insider risk associated with the authenticating user.The possible values are: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`. Default value is `none`|
|ipAddress|String|Ip address of the authenticating identity|
|servicePrincipalRiskLevel|riskLevel|Risk associated with the service principal.The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `low`|
|signInRiskLevel|riskLevel|Sign-in risk associated with the user.The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `low`|
|userRiskLevel|riskLevel|The authenticating user's risk level.The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `low`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInConditions",
  "signInRiskLevel": "String",
  "userRiskLevel": "String",
  "servicePrincipalRiskLevel": "String",
  "country": "String",
  "ipAddress": "String",
  "clientAppType": "String",
  "devicePlatform": "String",
  "deviceInfo": {
    "@odata.type": "microsoft.graph.deviceInfo"
  },
  "insiderRiskLevel": "String",
  "authenticationFlow": {
    "@odata.type": "microsoft.graph.authenticationFlow"
  }
}
```

