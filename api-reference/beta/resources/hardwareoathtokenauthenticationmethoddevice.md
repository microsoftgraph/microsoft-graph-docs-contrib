---
title: "hardwareOathTokenAuthenticationMethodDevice resource type"
description: "Exposes hardware OATH devices in the directory."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/09/2024
toc.title: Hardware OATH token devices
---

# hardwareOathTokenAuthenticationMethodDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes hardware OATH devices in the directory. For more information, see [Hardware OATH tokens](/entra/identity/authentication/concept-authentication-oath-tokens#oath-hardware-tokens-preview].

Inherits from [authenticationMethodDevice](../resources/authenticationmethoddevice.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethoddevice-list-hardwareoathdevices.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) collection|List all hardware OATH tokens in the inventory.|
|[Create](../api/authenticationmethoddevice-post-hardwareoathdevices.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Create a new hardwareOathTokenAuthenticationMethodDevice object.|
|[Create one or more objects](../api/authenticationmethoddevice-update.md)|[authenticationMethodDevice](../resources/authenticationmethoddevice.md)|Create one or more [authenticationMethodDevice](../resources/authenticationmethoddevice.md) objects.|
|[Get](../api/hardwareoathtokenauthenticationmethoddevice-get.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Read the properties and relationships of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.|
|[Update](../api/hardwareoathtokenauthenticationmethoddevice-update.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Update the properties of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.|
|[Delete](../api/authenticationmethoddevice-delete-hardwareoathdevices.md)|None|Delete an [authenticationMethodDevice](../resources/authenticationmethoddevice.md) object. Token needs to be unassigned first.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[identity](../resources/identity.md)|User the token is assigned to. Nullable. Supports `$filter` (`eq`).|
|displayName|String|Name that can be provided to the hardware OATH token.  Inherited from [authenticationMethodDevice](../resources/authenticationmethoddevice.md).|
|hashFunction|hardwareOathTokenHashFunction|Hash function of the hardrware token. The possible values are: `hmacsha1` or `hmacsha256`. Default value is: `hmacsha1`. Supports `$filter` (`eq`).|
|id|String|Unique identifier of the hardware OATH token. Inherited from [entity](../resources/entity.md).|
|lastUsedDateTime|DateTimeOffset|The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|manufacturer|String|Manufacturer name of the hardware token. Supports `$filter` (`eq`).|
|model|String|Model name of the hardware token. Supports `$filter` (`eq`).|
|secretKey|String|Secret key of the specific hardware token, provided by the vendor. |
|serialNumber|String|Serial number of the specific hardware token, often found on the back of the device. Supports `$select` and `$filter` (`eq`).|
|status|hardwareOathTokenStatus|Status of the hardware OATH token.The possible values are: `available`, `assigned`, `activated`, `failedActivation`. Supports `$filter`(`eq`).|
|timeIntervalInSeconds|Int32|Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignTo|[user](../resources/user.md)|Assign the hardware OATH token to a user.|

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
  "lastUsedDateTime": "String (timestamp)",
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
