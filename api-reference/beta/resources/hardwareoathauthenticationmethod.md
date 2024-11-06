---
title: "hardwareOathAuthenticationMethod resource type"
description: "Exposes the hardware OATH method on the user object."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# hardwareOathAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the hardware OATH method on the user object.

Inherits from [authenticationMethod](../resources/authenticationmethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-hardwareoathmethods.md)|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) collection|Get a list of the [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) objects and their properties.|
|[Create](../api/authentication-post-hardwareoathmethods.md)|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md)|Create a new [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.|
|[Get](../api/hardwareoathauthenticationmethod-get.md)|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md)|Read the properties and relationships of a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.|
|[Delete](../api/authentication-delete-hardwareoathmethods.md)|None|Delete a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.|
|[activate](../api/hardwareoathauthenticationmethod-activate.md)|None|Activate a hardware OATH token that is already assigned to a user.|
|[deactivate](../api/hardwareoathauthenticationmethod-deactivate.md)|None|Deactive a hardware OATH token. It remains assigned to a user.|
|[assignAndActivate](../api/hardwareoathauthenticationmethod-assignandactivate.md)|None|This allows assigning a hardware token and activating it at the same time.|
|[assignAndActivateBySerialNumber](../api/hardwareoathauthenticationmethod-assignandactivatebyserialnumber.md)|None|This allows assigning a hardware token and activating it at the same time by hardware token serial number.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the device. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|"Exposes the hardware OATH method in the directory.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareOathAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
  "id": "String (identifier)",
}
```
