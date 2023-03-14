---
title: "systemCredentialPreferences resource type"
description: "A complex type that defines settings to prompt users in the organization to use the most appropriate credentials among the ones registered by the user. Presently, a user has selected the default authentication method. With this implementation, this chosen credential is determined dynamically based on various factors including security, availability, and user experience. This credential will override the current method selected by the user. At present this will only apply to MFA. Going forward, in future releases, this will be applicable for all user authentications."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# systemCredentialPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Dynamically detect and prompt users with their preferred multi-factor authentication method from the registered methods

## Properties

|Property|Type|Description|
|:---|:---|:---|
|systemCredentialPreferences|[systemCredentialPreferences](../resources/systemcredentialpreferences.md)|Prompt users with the most preferred credential for multi factor|
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
