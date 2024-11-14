---
title: "hardwareOathTokenAuthenticationMethodDevice resource type"
description: "Exposes hardware OATH devices in the directory."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# hardwareOathTokenAuthenticationMethodDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes hardware OATH devices in the directory. For more information, see [Hardware OATH tokens](/entra/identity/authentication/concept-authentication-oath-tokens#oath-hardware-tokens-preview].

Inherits from [authenticationMethodDevice](../resources/authenticationmethoddevice.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/hardwareoathtokenauthenticationmethoddevice-get.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Read the properties and relationships of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.|
|[Update](../api/hardwareoathtokenauthenticationmethoddevice-update.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Update the properties of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.|
|[Add user](../api/hardwareoathtokenauthenticationmethoddevice-post-assignto.md)|[user](../resources/user.md)|Add assignTo by posting to the assignTo collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[identity](../resources/identity.md)|User the token is assigned to. Nullable.|
|displayName|String|Name that can be provided to the hardware OATH token.  Inherited from [authenticationMethodDevice](../resources/authenticationmethoddevice.md).|
|hashFunction|hardwareOathTokenHashFunction|Hash function of the hardrware token. The possible values are: `hmacsha1` or `hmacsha256`. Default value is: `hmacsha1`.|
|id|String|Unique identifier of the hardware OATH token. Inherited from [entity](../resources/entity.md).|
|manufacturer|String|Manufacturer name of the hardware token.|
|model|String|Model name of the hardware token.|
|secretKey|String|Secret key of the specific hardware token, provided by the vendor.|
|serialNumber|String|Serial number of the specific hardware token, often found on the back of the device.|
|status|hardwareOathTokenStatus|Status of the hardware OATH token.The possible values are: `available`, `assigned`, `activated`, `failedActivation`.|
|timeIntervalInSeconds|Int32|Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignTo|[user](../resources/user.md)|Assign the hardware OATH token to a user.|
|hardwareOathDevices|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) collection|Exposes the hardware OATH method on the user object. Inherited from [microsoft.graph.authenticationMethodDevice](../resources/authenticationmethoddevice.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareOathTokenAuthenticationMethodDevice",
  "baseType": "microsoft.graph.authenticationMethodDevice",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice",
  "id": "String (identifier)",
  "displayName": "String",
  "serialNumber": "String",
  "manufacturer": "String",
  "model": "String",
  "secretKey": "String",
  "timeIntervalInSeconds": "Integer",
  "status": "String",
  "assignedTo": {
    "@odata.type": "microsoft.graph.identity"
  },
  "hashFunction": "String"
}
```
