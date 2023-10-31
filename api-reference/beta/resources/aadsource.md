---
title: "aadSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# aadSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|**TODO: Add Description**|
|identityProviderType|String|**TODO: Add Description** Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|

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

