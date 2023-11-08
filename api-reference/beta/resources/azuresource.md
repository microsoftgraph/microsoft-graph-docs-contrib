---
title: "azureSource resource type"
description: "Represents the source of the Azure identity."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source of the Azure identity.

Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identityProviderType|String|IdP source type. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|
|subscriptionId|String|Azure subscription id.|

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

