---
title: "systemCredentialPreferences resource type"
description: "Represents a resource that dynamically detects and prompts users with the users preferred multifactor authentication method from the registered methods."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# systemCredentialPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource that dynamically detects and prompts users with the users preferred multifactor authentication method from the registered methods.

## Properties

|Property|Type|Description|
|state|microsoft.graph.advancedConfigState|microsoft.graph.advancedConfigState|
|includeTargets|Collection(microsoft.graph.includeTarget)|Users and groups included in the system preferred authentication method experience.|
|excludeTargets|Collection(microsoft.graph.includeTarget)|Users and groups excluded from the system preferred authentication method experience.|
|systemCredentialPreferences|[systemCredentialPreferences](../resources/systemcredentialpreferences.md)|Prompt users with the most preferred credential for multi factor.|
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
