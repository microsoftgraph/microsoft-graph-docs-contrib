---
title: "securityQuestionAuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# securityQuestionAuthenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityQuestionMethods](../api/authentication-list-securityquestionmethods.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) collection|Get the securityQuestionAuthenticationMethods from the securityQuestionMethods navigation property.|
|[Create securityQuestionMethods](../api/authentication-post-securityquestionmethods.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Create a new securityQuestionMethods object.|
|[Update securityQuestionMethods](../api/authentication-update-securityquestionmethods.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Update the properties of a securityQuestionMethods object.|
|[Get securityQuestionMethods](../api/authentication-get-securityquestionauthenticationmethod.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Read the properties and relationships of a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[Delete securityQuestionMethods](../api/authentication-delete-securityquestionmethods.md)|None|Delete a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[List securityQuestionAuthenticationMethods](../api/securityquestionauthenticationmethod-list.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) collection|Get a list of the [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) objects and their properties.|
|[Create securityQuestionAuthenticationMethod](../api/securityquestionauthenticationmethod-create.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Create a new [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[Get securityQuestionAuthenticationMethod](../api/securityquestionauthenticationmethod-get.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Read the properties and relationships of a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[Update securityQuestionAuthenticationMethod](../api/securityquestionauthenticationmethod-update.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Update the properties of a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[Delete securityQuestionAuthenticationMethod](../api/securityquestionauthenticationmethod-delete.md)|None|Deletes a [securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) object.|
|[enableSmsSignIn](../api/securityquestionauthenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/securityquestionauthenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/securityquestionauthenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answer|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|question|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityQuestionAuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityQuestionAuthenticationMethod",
  "id": "String (identifier)",
  "question": "String",
  "answer": "String"
}
```

