---
title: "softwareOathAuthenticationMethodConfiguration resource type"
description: "Represents the authentication policy for a third-party software OATH authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Software OATH
ms.date: 07/22/2024
---

# softwareOathAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents the authentication policy for a third-party software OATH authentication method. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/softwareoathauthenticationmethodconfiguration-get.md)|[softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md)|Read the properties and relationships of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Update](../api/softwareoathauthenticationmethodconfiguration-update.md)|None|Update the properties of a [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object.|
|[Delete](../api/softwareoathauthenticationmethodconfiguration-delete.md)|None|Reverts the [softwareOathAuthenticationMethodConfiguration](../resources/softwareoathauthenticationmethodconfiguration.md) object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The authentication method policy identifier.|
|state|authenticationMethodState|Represents whether users can register this authentication method. The possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection| A collection of groups that are enabled to use the authentication method. Expanded by default.|

The following JSON representation shows the resource type.
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

