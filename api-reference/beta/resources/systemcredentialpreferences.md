---
title: "authenticationMethodsPolicy resource type"
description: "A complex type that defines settings to prompt users in the organization to use the most appropriate credentials among the ones registered by the user. Presently, a user has selected the default authentication method. With this implementation, this chosen credential is determined dynamically based on various factors including security, availability, and user experience. This credential will override the current method selected by the user. At present this will only apply to MFA. Going forward, in future releases, this will be applicable for all user authentications."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# systemCredentialPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTarget|[excludeTarget](../resources/excludetarget.md) collection|Users and groups included in the system preferred authentication method experience|
|includeTarget|[includeTarget](../resources/includetarget.md) collection|Users and groups excluded from the system preferred authentication method experience|
|state|advancedConfigState|Enable or disable the feature. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. The `default` value is used when the configuration hasn't been explicitly set and uses the default behavior of Azure AD for the setting. The default value is `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.systemCredentialPreferences"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.systemCredentialPreferences",
   "includeTargets": [
    {
      "@odata.type": "microsoft.graph.includeTarget"
    }
  ],
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "state": "String"
}
```

