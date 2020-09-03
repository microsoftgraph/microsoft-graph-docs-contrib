---
title: "authenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List methods](../api/authentication-list-methods.md)|[authenticationMethod](../resources/authenticationmethod.md) collection|Get the authenticationMethods from the methods navigation property.|
|[Create methods](../api/authentication-post-methods.md)|[authenticationMethod](../resources/authenticationmethod.md)|Create a new methods object.|
|[Update methods](../api/authentication-update-methods.md)|[authenticationMethod](../resources/authenticationmethod.md)|Update the properties of a methods object.|
|[Get methods](../api/authentication-get-authenticationmethod.md)|[authenticationMethod](../resources/authenticationmethod.md)|Read the properties and relationships of an [authenticationMethod](../resources/authenticationmethod.md) object.|
|[Delete methods](../api/authentication-delete-methods.md)|None|Delete an [authenticationMethod](../resources/authenticationmethod.md) object.|
|[List authenticationMethods](../api/authenticationmethod-list.md)|[authenticationMethod](../resources/authenticationmethod.md) collection|Get a list of the [authenticationMethod](../resources/authenticationmethod.md) objects and their properties.|
|[Create authenticationMethod](../api/authenticationmethod-create.md)|[authenticationMethod](../resources/authenticationmethod.md)|Create a new [authenticationMethod](../resources/authenticationmethod.md) object.|
|[Get authenticationMethod](../api/authenticationmethod-get.md)|[authenticationMethod](../resources/authenticationmethod.md)|Read the properties and relationships of an [authenticationMethod](../resources/authenticationmethod.md) object.|
|[Update authenticationMethod](../api/authenticationmethod-update.md)|[authenticationMethod](../resources/authenticationmethod.md)|Update the properties of an [authenticationMethod](../resources/authenticationmethod.md) object.|
|[Delete authenticationMethod](../api/authenticationmethod-delete.md)|None|Deletes an [authenticationMethod](../resources/authenticationmethod.md) object.|
|[enableSmsSignIn](../api/authenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/authenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/authenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethod",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethod",
  "id": "String (identifier)"
}
```

