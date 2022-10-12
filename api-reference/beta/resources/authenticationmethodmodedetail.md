---
title: "authenticationMethodModeDetail resource type"
description: "A representation of a specific mode of an authentication method that can be used as part of an authentication method combination in an authentication strength."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodModeDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The details of the **authenticationMethodModes** objects that can be defined for the **allowedCombinations** property of the [authenticationstrengthpolicy](../resources/authenticationStrengthPolicy.md).

For more information on authentication methods, see the [authentication methods overview](../resources/authenticationmethods-overview.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationMethodModeDetails](../api/authenticationstrengthroot-list-authenticationmethodmodes.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) collection|Get a list of the [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) objects and their properties.|
|[Get authenticationMethodModeDetail](../api/authenticationmethodmodedetail-get.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md)|Read the properties and relationships of an [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|baseAuthenticationMethod|The authentication method that this mode modifies. The possible values are: `password`, `voice`, `hardwareOath`, `softwareOath`, `sms`, `fido2`, `windowsHelloForBusiness`, `microsoftAuthenticator`, `temporaryAccessPass`, `email`, `x509Certificate`, `federation`, `unknownFutureValue`.|
|displayName|String|The display name of this mode|
|id|String|The system-generated identifier for this mode. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodModeDetail",
  "baseType": "microsoft.graph.entity",
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

