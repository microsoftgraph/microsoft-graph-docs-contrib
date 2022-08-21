---
title: "authenticationMethodModeDetail resource type"
description: "A specific mode of af an authentication method that operates in more than one way"
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodModeDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A detail view of an authentication method mode, which is a specific mode of operation for an authentication method that operates in more than one way such as Microsoft Authenticator, which may be used for simple push approval or as a strong Passwordless authenticator.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationMethodModeDetails](../api/authenticationstrengthroot-list-authenticationmethodmodes.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) collection|Get a list of the [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) objects and their properties.|
|[Create authenticationMethodModeDetail](../api/authenticationstrengthroot-post-authenticationmethodmodes.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md)|Create a new [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|
|[Get authenticationMethodModeDetail](../api/authenticationmethodmodedetail-get.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md)|Read the properties and relationships of an [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|
|[Update authenticationMethodModeDetail](../api/authenticationmethodmodedetail-update.md)|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md)|Update the properties of an [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|
|[Delete authenticationMethodModeDetail](../api/authenticationstrengthroot-delete-authenticationmethodmodes.md)|None|Deletes an [authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|baseAuthenticationMethod|Which authentication method this mode modifies. The possible values are: `password`, `voice`, `hardwareOath`, `softwareOath`, `sms`, `fido2`, `windowsHelloForBusiness`, `microsoftAuthenticator`, `temporaryAccessPass`, `email`, `x509Certificate`, `federation`, `unknownFutureValue`.|
|displayName|String|The display name of this mode|
|id|String|The system-generated GUID for this mode. Inherited from [entity](../resources/entity.md).|

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

