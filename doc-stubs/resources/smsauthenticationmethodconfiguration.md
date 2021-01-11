---
title: "smsAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# smsAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List smsAuthenticationMethodConfigurations](../api/smsauthenticationmethodconfiguration-list.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) collection|Get a list of the [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) objects and their properties.|
|[Create smsAuthenticationMethodConfiguration](../api/smsauthenticationmethodconfiguration-create.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md)|Create a new [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) object.|
|[Get smsAuthenticationMethodConfiguration](../api/smsauthenticationmethodconfiguration-get.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md)|Read the properties and relationships of a [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) object.|
|[Update smsAuthenticationMethodConfiguration](../api/smsauthenticationmethodconfiguration-update.md)|[smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md)|Update the properties of a [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) object.|
|[Delete smsAuthenticationMethodConfiguration](../api/smsauthenticationmethodconfiguration-delete.md)|None|Deletes a [smsAuthenticationMethodConfiguration](../resources/smsauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/smsauthenticationmethodconfiguration-list-includetargets.md)|[smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md) collection|Get the smsAuthenticationMethodTarget resources from the includeTargets navigation property.|
|[Create smsAuthenticationMethodTarget](../api/smsauthenticationmethodconfiguration-post-includetargets.md)|[smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md)|Create a new smsAuthenticationMethodTarget object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[smsAuthenticationMethodTarget](../resources/smsauthenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.smsAuthenticationMethodConfiguration",
  "baseType": "microsoft.authMethodPolicy.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.smsAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

