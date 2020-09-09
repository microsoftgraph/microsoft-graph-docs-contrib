---
title: "emailAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# emailAuthenticationMethod resource type

Namespace: microsoft.graph

A representation of an email address registered to a user. Email is an authentication method available only to self-service password reset (SSPR). Users may only have one email authentication method.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authentication-list-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Retrieve a list of a user's emailAuthenticationMethods. Users may only have one email authentication method.|
|[Get](../api/authentication-get-emailauthenticationmethod.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Retrieve the properties  of the user's emailAuthenticationMethod object.|
|[Create](../api/authentication-post-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Create a user's emailMethods object.|
|[Update](../api/authentication-update-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Update the properties of a user's emailMethods object.|
|[Delete](../api/authentication-delete-emailmethods.md)|None|Delete a user's emailAuthenticationMethod object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the email address registered to this user.|
|emailAddress|String|The email address registered to this user.|

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
  "id": "String (identifier)",
  "emailAddress": "String"
}
```

