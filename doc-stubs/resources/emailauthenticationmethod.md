---
title: "emailAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# emailAuthenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailMethods](../api/authentication-list-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Get the emailAuthenticationMethods from the emailMethods navigation property.|
|[Create emailMethods](../api/authentication-post-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Create a new emailMethods object.|
|[Update emailMethods](../api/authentication-update-emailmethods.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Update the properties of an emailMethods object.|
|[Get emailMethods](../api/authentication-get-emailauthenticationmethod.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Read the properties and relationships of an [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[Delete emailMethods](../api/authentication-delete-emailmethods.md)|None|Delete an [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[List emailAuthenticationMethods](../api/emailauthenticationmethod-list.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Get a list of the [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) objects and their properties.|
|[Create emailAuthenticationMethod](../api/emailauthenticationmethod-create.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Create a new [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[Get emailAuthenticationMethod](../api/emailauthenticationmethod-get.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Read the properties and relationships of an [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[Update emailAuthenticationMethod](../api/emailauthenticationmethod-update.md)|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md)|Update the properties of an [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[Delete emailAuthenticationMethod](../api/emailauthenticationmethod-delete.md)|None|Deletes an [emailAuthenticationMethod](../resources/emailauthenticationmethod.md) object.|
|[enableSmsSignIn](../api/emailauthenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/emailauthenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/emailauthenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailAddress|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

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

