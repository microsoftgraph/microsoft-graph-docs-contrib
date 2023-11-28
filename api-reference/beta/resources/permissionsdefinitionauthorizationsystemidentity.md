---
title: "permissionsDefinitionAuthorizationSystemIdentity"
description: "Represents an identity that's requesting permissions in an authorization system, either directly or indirectly."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinitionAuthorizationSystemIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity that's requesting permissions in an authorization system, either directly or indirectly.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|Unique ID of the identity within the external system. Prefixed with `rsn:` if this is a SAML or ED user in AWS. Alternate key.|
|identityType|permissionsDefinitionIdentityType|The type of identity that is assigned the permission in the authorization system. The possible values are: `user`, `role`, `application`, `managedIdentity`, `serviceAccount`, `unknownFutureValue`.|
|source|[permissionsDefinitionIdentitySource](../resources/permissionsdefinitionidentitysource.md)|The source system for the identity.|

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

