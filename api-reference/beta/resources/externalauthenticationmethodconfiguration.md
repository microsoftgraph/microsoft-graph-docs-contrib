---
title: "externalAuthenticationMethodConfiguration resource type"
description: "Specifies the properties and connection information for an external authentication method."
author: "gregk-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# externalAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the properties and connection information for an external authentication method.


Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/externalauthenticationmethodconfiguration-list.md)|[externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) collection|Get a list of the [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) objects and their properties.|
|[Get](../api/externalauthenticationmethodconfiguration-get.md)|[externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md)|Read the properties and relationships of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|
|[Update](../api/externalauthenticationmethodconfiguration-update.md)|[externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md)|Update the properties of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|
|[Delete](../api/externalauthenticationmethodconfiguration-delete.md)|None|Delete an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|
|[List includeTargets](../api/externalauthenticationmethodconfiguration-list-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|Get the authenticationMethodTarget resources from the includeTargets navigation property.|
|[Create authenticationMethodTarget](../api/externalauthenticationmethodconfiguration-post-includetargets.md)|[authenticationMethodTarget](../resources/authenticationmethodtarget.md)|Create a new authenticationMethodTarget object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|openIdConnectSetting|[openIdConnectSetting](../resources/openidconnectsetting.md)|**TODO: Add Description**|
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "displayName": "String",
  "appId": "String",
  "openIdConnectSetting": {
    "@odata.type": "microsoft.graph.openIdConnectSetting"
  }
}
```

