---
title: "authenticationMethodDevice resource type"
description: "Exposes the hardware OATH method in the directory."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationMethodDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the hardware OATH method in the directory.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Update](../api/authenticationmethoddevice-update.md)|[authenticationMethodDevice](../resources/authenticationmethoddevice.md)|Update the properties of an [authenticationMethodDevice](../resources/authenticationmethoddevice.md) object.|
|[Delete](../api/directory-delete-authenticationmethoddevices.md)|None|Delete an [authenticationMethodDevice](../resources/authenticationmethoddevice.md) object. Token needs to be unassigned first.|
|[List hardwareOathDevices](../api/authenticationmethoddevice-list-hardwareoathdevices.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) collection|List all hardware OATH tokens in the inventory.|
|[Create hardwareOathTokenAuthenticationMethodDevice](../api/authenticationmethoddevice-post-hardwareoathdevices.md)|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|Create a new hardwareOathTokenAuthenticationMethodDevice object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Optional name given to the hardware OATH device.|
|id|String|Unique identifier for the device. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|hardwareOathDevices|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodDevice",
  "id": "String (identifier)",
  "displayName": "String"
}
```

