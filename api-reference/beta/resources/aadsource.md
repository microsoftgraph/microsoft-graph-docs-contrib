---
title: "aadSource resource type"
description: "Represents an authorization system identity sourced from Microsoft Entra ID."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# aadSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an authorization system identity sourced from Microsoft Entra ID.

Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|Domain name|
|identityProviderType|String|Type of identity provider. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadSource",
  "identityProviderType": "String",
  "domain": "String"
}
```

