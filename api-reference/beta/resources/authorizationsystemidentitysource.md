---
title: "authorizationSystemIdentitySource resource type"
description: "Used to represent source of an authorization system identity. This can be of different types such as aadSource, oktaSource, etc"
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemIdentitySource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to represent source of an authorization system identity. This can be of different types such as aadSource, oktaSource, etc.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identityProviderType|String|Type of identity provider. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemIdentitySource",
  "identityProviderType": "String"
}
```

