---
title: "voiceAuthenticationMethodConfiguration resource type"
description: "Represents a voice call authenticaiton methods policy"
author: "luc-msft"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Voice
ms.date: 07/22/2024
---

# voiceAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a voice call authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/voiceauthenticationmethodconfiguration-get.md)|[voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md)|Read the properties and relationships of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Update](../api/voiceauthenticationmethodconfiguration-update.md)|None|Update the properties of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.|
|[Delete](../api/voiceauthenticationmethodconfiguration-delete.md)|None|Revert the [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object to its default configuration.|

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

The following JSON representation shows the resource type.
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

