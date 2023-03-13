---
title: "smsAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use the text message authentication methods policy."
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# smsAuthenticationMethodTarget resource type
Namespace: microsoft.graph

A collection of groups enabled to use the [text message authentication methods policy](../resources/smsAuthenticationMethodConfiguration.md) in Azure AD.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. **Not supported**.|
|isUsableForSignIn|Boolean|Determines if users can use this authentication method to sign in to Azure AD. `true` if users can use this method for primary authentication, otherwise `false`.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets will remain but we recommend to move the individual users to a targeted group. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.smsAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.smsAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "isUsableForSignIn": "Boolean"
}
```

