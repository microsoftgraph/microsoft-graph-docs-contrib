---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type"
description: "A representation of a Microsoft Authenticator Passwordless Phone Sign-in method registered to a user."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Microsoft Authenticator Passwordless Phone sign-in (deprecated)
ms.date: 07/22/2024
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethod resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a Microsoft Authenticator Passwordless Phone Sign-in method registered to a user.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

> [!CAUTION]
> The Microsoft Authenticator Passwordless Phone Sign-in method API is deprecated and will stop returning results on December 31, 2020. Please use the new [Microsoft Authenticator Authentication Method](../resources/microsoftAuthenticatorAuthenticationMethod.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-list.md) (deprecated)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Retrieve a list of a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod objects and their properties.|
|[Get](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-get.md) (deprecated)|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md)|Read the properties and relationships of a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod object.|
|[Delete](../api/passwordlessmicrosoftauthenticatorauthenticationmethod-delete.md) (deprecated)|None|Deletes a user's passwordlessMicrosoftAuthenticatorAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method identifier.|
|displayName|String|The display name of the mobile device as given by the user.|
|creationDateTime|DateTimeOffset|The timestamp when this method was registered to the user.|


The following JSON representation shows the resource type.
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

