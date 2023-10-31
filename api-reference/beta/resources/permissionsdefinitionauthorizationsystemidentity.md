---
title: "permissionsDefinitionAuthorizationSystemIdentity description: "Represents an identity."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinitionAuthorizationSystemIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|Id of the identity in the external authorization system. Prefixed with rsn: if this is a SAML or ED user in AWS.|
|identityType|permissionsDefinitionIdentityType|Role Id. The possible values are: `user`, `role`, `application`, `managedIdentity`, `serviceAccount`, `unknownFutureValue`.|
|source|[permissionsDefinitionIdentitySource](../resources/permissionsdefinitionidentitysource.md)|Role Id.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "externalId",
  "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity",
  "externalId": "String (identifier)",
  "identityType": "String",
  "source": {
    "@odata.type": "microsoft.graph.permissionsDefinitionIdentitySource"
  }
}
```

