---
title: "systemCredentialPreferences resource type"
description: "Dynamically detects and prompts users with their preferred multifactor authentication method from the registered methods."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# systemCredentialPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Dynamically detects and prompts users with their preferred multifactor authentication method from the registered methods.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Users and groups excluded from the preferred authentication method experience of the system.|
|includeTargets|[includeTarget](../resources/includetarget.md) collection|Users and groups included in the preferred authentication method experience of the system.|
|state|advancedConfigState|Indicates whether the feature is enabled or disabled. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. The `default` value is used when the configuration hasn't been explicitly set, and uses the default behavior of Azure Active Directory for the setting. The default value is `disabled`.|

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
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "includeTargets": [
    {
      "@odata.type": "microsoft.graph.includeTarget"
    }
  ],
  "state": "String"
}
```
