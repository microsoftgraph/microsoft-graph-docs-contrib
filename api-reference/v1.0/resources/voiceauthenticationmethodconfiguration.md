---
title: "voiceAuthenticationMethodConfiguration resource type"
description: "Represents a voice call authenticaiton methods policy"
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# voiceAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents a voice call authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-get.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Read the properties and relationships of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Update voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-update.md)|None|Update the properties of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Delete voiceAuthenticationMethodConfiguration](../api/voiceauthenticationmethodconfiguration-delete.md)|None|Revert the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The authentication method policy identifier.|
|isOfficePhoneAllowed|Boolean|`true` if users can register office phones, otherwise, `false`. |
|state|authenticationMethodState|Represents whether users can register this authentication method. The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[voiceAuthenticationMethodTarget](../resources/voiceauthenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method. Expanded by default.|

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

