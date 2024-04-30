---
title: "externalAuthenticationMethodConfiguration resource type"
description: "Specifies the properties and connection information for an external authentication method."
author: "gregkmsft"
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
|[Get](../api/externalauthenticationmethodconfiguration-get.md)|[externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md)|Read the properties and relationships of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|
|[Update](../api/externalauthenticationmethodconfiguration-update.md)|[externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md)|Update the properties of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|
|[Delete](../api/externalauthenticationmethodconfiguration-delete.md)|None|Delete an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appId|String|AppID for the App Registration in Entra ID representing the integration with the external provider|
|displayName|String|Display name for the external authentication method.  This is the name shown to users during sign-in.|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users excluded from the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|id|String|The unique identifier for an entity. Read-only. Inherited from [entity](../resources/entity.md).|
|openIdConnectSetting|[openIdConnectSetting](../resources/openidconnectsetting.md)|Open ID Connection settings used by this external authentication method|
|state|authenticationMethodState|The state of the method in the policy. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID.|

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

