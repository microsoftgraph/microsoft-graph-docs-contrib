---
title: "microsoftAuthenticatorAuthenticationMethod resource type"
description: "A representation of the Microsoft Authenticator app registered to a user. Microsoft Authenticator is an authentication method."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Microsoft Authenticator
ms.date: 07/28/2025
---

# microsoftAuthenticatorAuthenticationMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of the Microsoft Authenticator app registered to a user. Microsoft Authenticator is an authentication method.

This type inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/microsoftauthenticatorauthenticationmethod-list.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection|Get a list of the [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) objects and their properties.|
|[Get](../api/microsoftauthenticatorauthenticationmethod-get.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) object.|
|[Delete](../api/microsoftauthenticatorauthenticationmethod-delete.md)|None|Deletes a [microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time that this app was registered. This property is null if the device isn't registered for passwordless Phone Sign-In.|
|lastUsedDateTime|DateTimeOffset|The date and time the authentication method was last used by the user. Read-only. Optional. This optional value is `null` if the authentication method doesn't populate it. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [authenticationMethod](../resources/authenticationmethod.md).|
|displayName|String|The name of the device on which this app is registered.|
|id|String|A unique identifier for this authentication method. Inherited from [authenticationMethod](../resources/authenticationmethod.md)|
|deviceTag|String|Tags containing app metadata.|
|phoneAppVersion|String|Numerical version of this instance of the Authenticator app.|
|clientAppName|microsoftAuthenticatorAuthenticationMethodClientAppName|The app that the user has registered to use to approve push notifications. The possible values are: `microsoftAuthenticator`, `outlookMobile`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[device](../resources/device.md)|The registered device on which Microsoft Authenticator resides. This property is null if the device isn't registered for passwordless Phone Sign-In.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethod",
  "id": "String (Identifier)",
  "displayName": "String",
  "deviceTag": "String",
  "phoneAppVersion": "String",
  "createdDateTime": "String (timestamp)",
  "lastUsedDateTime": "String (timestamp)",
  "clientAppName": "microsoftAuthenticator"
}
```
