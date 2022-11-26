---
title: "softwareOathAuthenticationMethodConfiguration resource type"
description: "Represents a Third-Party Software OATH Authentication methods policy"
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# softwareOathAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Third-Party Software OATH Authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-get.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Read the properties and relationships of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Update softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-update.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Update the properties of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Delete softwareOathAuthenticationMethodConfiguration](../api/softwareoathauthenticationmethodconfiguration-delete.md)|None|Delete a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection| A collection of users or groups of users that are excluded from a policy.|
|id|String|The authentication method policy identifier.|
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection| A collection of users or groups who are enabled to use the authentication method. Expanded by default.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.softwareOathAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ]
}
```

