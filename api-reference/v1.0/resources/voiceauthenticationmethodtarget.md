---
title: "voiceAuthenticationMethodTarget resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# voiceAuthenticationMethodTarget resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List voiceAuthenticationMethodTargets](../api/voiceauthenticationmethodconfiguration-list-includetargets.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) collection|Get a list of the [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) objects and their properties.|
|[Create voiceAuthenticationMethodTarget](../api/voiceauthenticationmethodconfiguration-post-includetargets.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md)|Create a new [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) object.|
|[Get voiceAuthenticationMethodTarget](../api/voiceauthenticationmethodtarget-get.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md)|Read the properties and relationships of a [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) object.|
|[Update voiceAuthenticationMethodTarget](../api/voiceauthenticationmethodtarget-update.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md)|Update the properties of a [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) object.|
|[Delete voiceAuthenticationMethodTarget](../api/voiceauthenticationmethodconfiguration-delete-includetargets.md)|None|Delete a [voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isRegistrationRequired|Boolean|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).|
|targetType|authenticationMethodTargetType|**TODO: Add Description** Inherited from [authenticationMethodTarget](../resources/authenticationmethodtarget.md).The possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.voiceAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.voiceAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean"
}
```

