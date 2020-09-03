---
title: "fido2AuthenticationMethod resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# fido2AuthenticationMethod resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethod](../resources/authenticationmethod.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fido2Methods](../api/authentication-list-fido2methods.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Get the fido2AuthenticationMethod from the fido2Methods navigation property.|
|[Create fido2Methods](../api/authentication-post-fido2methods.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Create a new fido2Methods object.|
|[Update fido2Methods](../api/authentication-update-fido2methods.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Update the properties of a fido2Methods object.|
|[Get fido2Methods](../api/authentication-get-fido2authenticationmethod.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[Delete fido2Methods](../api/authentication-delete-fido2methods.md)|None|Delete a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[List fido2AuthenticationMethod](../api/fido2authenticationmethod-list.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Get a list of the [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) objects and their properties.|
|[Create fido2AuthenticationMethod](../api/fido2authenticationmethod-create.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Create a new [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[Get fido2AuthenticationMethod](../api/fido2authenticationmethod-get.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Read the properties and relationships of a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[Update fido2AuthenticationMethod](../api/fido2authenticationmethod-update.md)|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md)|Update the properties of a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[Delete fido2AuthenticationMethod](../api/fido2authenticationmethod-delete.md)|None|Deletes a [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object.|
|[enableSmsSignIn](../api/fido2authenticationmethod-enablesmssignin.md)|None|**TODO: Add Description**|
|[disableSmsSignIn](../api/fido2authenticationmethod-disablesmssignin.md)|None|**TODO: Add Description**|
|[resetPassword](../api/fido2authenticationmethod-resetpassword.md)|[passwordResetResponse](../resources/passwordresetresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aaGuid|String|**TODO: Add Description**|
|attestationCertificates|String collection|**TODO: Add Description**|
|attestationLevel|attestationLevel|**TODO: Add Description**. Possible values are: `attested`, `notAttested`, `unknownFutureValue`.|
|creationDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|model|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod",
  "baseType": "microsoft.graph.authenticationMethod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2AuthenticationMethod",
  "id": "String (identifier)",
  "displayName": "String",
  "creationDateTime": "String (timestamp)",
  "aaGuid": "String",
  "model": "String",
  "attestationCertificates": [
    "String"
  ],
  "attestationLevel": "String"
}
```

