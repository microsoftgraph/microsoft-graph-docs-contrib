---
title: "voiceAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# voiceAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List voiceAuthenticationMethodConfigurations](../api/voiceauthenticationmethodconfiguration-list.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) collection|Get a list of the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) objects and their properties.|
|[Get voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-get.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Read the properties and relationships of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Update voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-update.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Update the properties of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Delete voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-delete.md)|None|Delete a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/voiceauthenticationmethodconfiguration-list-includetargets.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) collection|Get the voiceAuthenticationMethodTarget resources from the includeTargets navigation property.|
|[Create voiceAuthenticationMethodTarget](../api/voiceauthenticationmethodconfiguration-post-includetargets.md)|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md)|Create a new voiceAuthenticationMethodTarget object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isOfficePhoneAllowed|Boolean|**TODO: Add Description**|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.voiceAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "isOfficePhoneAllowed": "Boolean"
}
```

