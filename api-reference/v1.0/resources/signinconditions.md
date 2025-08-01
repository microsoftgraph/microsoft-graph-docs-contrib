---
title: "signInConditions resource type"
description: "Represents sign-in parameters of the identity that is authenticating"
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# signInConditions resource type

Namespace: microsoft.graph

Represents sign-in parameters of the authenticating identity as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationFlow|[authenticationFlow](../resources/authenticationflow.md)| Type of authentication flow. The possible value is: `deviceCodeFlow` or `authenticationTransfer`. Default value is `none`.|
|clientAppType|conditionalAccessClientApp|Client application type. The possible value is: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported`, `other`, `unknownFutureValue`. Default value is `all`. |
|country|String|Country from where the identity is authenticating.|
|deviceInfo|[deviceInfo](../resources/deviceinfo.md)|Information about the device used for the sign-in.|
|devicePlatform|conditionalAccessDevicePlatform|Device platform. The possible value is: `android`, `iOS`, `windows`, `windowsPhone`, `macOS`, `all`, `unknownFutureValue`, `linux`. Default value is `all`.|
|insiderRiskLevel|insiderRiskLevel|Insider risk associated with the authenticating user. The possible value is: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`. Default value is `none`.|
|ipAddress|String|Ip address of the authenticating identity.|
|servicePrincipalRiskLevel|riskLevel|Risk associated with the service principal. The possible value is: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `none`.|
|signInRiskLevel|riskLevel|Sign-in risk associated with the user. The possible value is: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `none`.|
|userRiskLevel|riskLevel|The authenticating user's risk level. The possible value is: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Default value is `none`.|

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

