---
title: "gsuiteSource resource type"
description: "Represents an authorization system identity sourced from Google Workspace."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# gsuiteSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

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


