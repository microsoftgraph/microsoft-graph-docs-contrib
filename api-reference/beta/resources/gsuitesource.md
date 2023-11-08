---
title: "gsuiteSource resource type"
description: "Used to represent an authorization system identity sourced from gsuite."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gsuiteSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to represent an authorization system identity sourced from gsuite

Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|Domain name|
|identityProviderType|String|IdP source type. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.gsuiteSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gsuiteSource",
  "identityProviderType": "String",
  "domain": "String"
}
```

