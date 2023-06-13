---
title: "emailAuthenticationMethod resource type"
description: "Represents an email address registered to a user. Email as an authentication method is available only for self-service password reset (SSPR)."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# emailAuthenticationMethod resource type

Namespace: microsoft.graph

Represents an email address registered to a user. Email as an authentication method is available only for self-service password reset (SSPR). Users may only have one email authentication method.

This is a derived type that inherits from the [authenticationMethod](authenticationmethod.md) resource type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailMethods](../api/authentication-list-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Retrieve a list of a user's email authentication methods. Users may only have one email authentication method.|
|[Create emailMethod](../api/authentication-post-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Create a user's **emailAuthenticationMethod** object.|
|[Get emailAuthenticationMethod](../api/emailauthenticationmethod-get.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Retrieve the properties of the user's **emailAuthenticationMethod** object.|
|[Update emailAuthenticationMethod](../api/emailauthenticationmethod-update.md)| None |Update the properties of a user's **emailAuthenticationMethod** object.|
|[Delete emailAuthenticationMethod](../api/emailauthenticationmethod-delete.md)|None|Delete a user's **emailAuthenticationMethod** object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailAddress|String|The email address registered to this user.|
|id|String|The identifier of the email address registered to this user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailAuthenticationMethod",
  "emailAddress": "String",
  "id": "String (identifier)"
}
```

