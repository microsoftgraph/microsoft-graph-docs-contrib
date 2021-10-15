---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List microsoftAuthenticatorAuthenticationMethodTargets](../api/microsoftauthenticatorauthenticationmethodtarget-list.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) collection|Get a list of the [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) objects and their properties.|
|[Create microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodconfiguration-post-includetargets.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Create a new [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Get microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-get.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Read the properties and relationships of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Update microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-update.md)|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md)|Update the properties of a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|
|[Delete microsoftAuthenticatorAuthenticationMethodTarget](../api/microsoftauthenticatorauthenticationmethodtarget-delete.md)|None|Deletes a [microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|**TODO: Add Description**. The possible values are: `deviceBasedPush`, `push`, `any`.|
|displayAppInformationRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`.|
|displayLocationInformationRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isRegistrationRequired|Boolean|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).|
|numberMatchingRequiredState|advancedConfigState|**TODO: Add Description**. The possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`.|
|targetType|authenticationMethodTargetType|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md). The possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "authenticationMode": "String",
  "displayAppInformationRequiredState": "String",
  "displayLocationInformationRequiredState": "String",
  "numberMatchingRequiredState": "String"
}
```

