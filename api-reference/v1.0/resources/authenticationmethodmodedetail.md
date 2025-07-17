---
title: "authenticationMethodModeDetail resource type"
description: "Represents a specific mode of an authentication method that can be used as part of an authentication method combination in an authentication strength."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationMethodModeDetail resource type

Namespace: microsoft.graph

The details of the **authenticationMethodModes** objects that can be defined for the **allowedCombinations** property of the [authenticationstrengthpolicy](../resources/authenticationStrengthPolicy.md).

For more information on authentication methods, see the [authentication methods overview](../resources/authenticationmethods-overview.md)


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authentication combinations and method modes](../api/authenticationstrengthroot-list-authenticationmethodmodes.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) collection|Get a list of the [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) objects and their properties.|
|[Get authentication method modes](../api/authenticationmethodmodedetail-get.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md)|Read the properties and relationships of an [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|baseAuthenticationMethod|The authentication method that this mode modifies. The possible values are: `password`, `voice`, `hardwareOath`, `softwareOath`, `sms`, `fido2`, `windowsHelloForBusiness`, `microsoftAuthenticator`, `temporaryAccessPass`, `email`, `x509Certificate`, `federation`, `unknownFutureValue`, `qrCodePin`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `qrCodePin`.|
|displayName|String|The display name of this mode|
|id|String|The system-generated identifier for this mode. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodModeDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodModeDetail",
  "id": "String (identifier)",
  "displayName": "String",
  "authenticationMethod": "String"
}
```

