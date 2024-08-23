---
title: "azureSource resource type"
description: "Represents an authorization system identity sourced from Microsoft Azure."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# azureSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an authorization system identity sourced from Microsoft Azure.

Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identityProviderType|String|Identity provider source type. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|
|subscriptionId|String|Azure subscription ID.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureSource",
  "identityProviderType": "String",
  "subscriptionId": "String"
}
```

