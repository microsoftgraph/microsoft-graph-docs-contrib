---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List passwordlessMicrosoftAuthenticatorMethods](../api/authentication-list-passwordlessmicrosoftauthenticatormethods.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Get the passwordlessMicrosoftAuthenticatorAuthenticationMethods from the passwordlessMicrosoftAuthenticatorMethods navigation property.|
|[Create passwordlessMicrosoftAuthenticatorMethods](../api/authentication-post-passwordlessmicrosoftauthenticatormethods.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Create a new passwordlessMicrosoftAuthenticatorMethods object.|
|[Update passwordlessMicrosoftAuthenticatorMethods](../api/authentication-update-passwordlessmicrosoftauthenticatormethods.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Update the properties of a passwordlessMicrosoftAuthenticatorMethods object.|
|[Get passwordlessMicrosoftAuthenticatorMethods](../api/authentication-get-passwordlessmicrosoftauthenticatorauthenticationmethod.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[Delete passwordlessMicrosoftAuthenticatorMethods](../api/authentication-delete-passwordlessmicrosoftauthenticatormethods.md)|None|Delete a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[List passwordlessMicrosoftAuthenticatorAuthenticationMethods](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-list.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Get a list of the [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) objects and their properties.|
|[Create passwordlessMicrosoftAuthenticatorAuthenticationMethod](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-create.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Create a new [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[Get passwordlessMicrosoftAuthenticatorAuthenticationMethod](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-get.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[Update passwordlessMicrosoftAuthenticatorAuthenticationMethod](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-update.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Update the properties of a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[Delete passwordlessMicrosoftAuthenticatorAuthenticationMethod](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-delete.md)|None|Deletes a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.|
|[enableSmsSignIn](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|
|[List device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-list-device.md)|[device](../resources/device.md) collection|Get the devices from the device navigation property.|
|[Create device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-post-device.md)|[device](../resources/device.md)|Create a new device object.|
|[Get device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-get-device.md)|[device](../resources/device.md)|Read the properties and relationships of a [device](../resources/device.md) object.|
|[Update device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-update-device.md)|[device](../resources/device.md)|Update the properties of a device object.|
|[Delete device](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-delete-device.md)|None|Delete a [device](../resources/device.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod",
  "id": "String (identifier)",
  "displayName": "String",
  "creationDateTime": "String (timestamp)"
}
```

