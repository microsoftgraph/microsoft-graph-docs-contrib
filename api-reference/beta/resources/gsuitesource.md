---
title: "gsuiteSource resource type"
description: "Represents an authorization system identity sourced from Google Workspace."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gsuiteSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an authorization system identity sourced from Google Workspace.

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

