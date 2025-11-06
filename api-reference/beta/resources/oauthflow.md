---
title: "oAuthFlow resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# oAuthFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationUrl|String|**TODO: Add Description**|
|refreshUrl|String|**TODO: Add Description**|
|scopes|[oAuthScopeDictionary](../resources/oauthscopedictionary.md)|**TODO: Add Description**|
|tokenUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oAuthFlow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oAuthFlow",
  "authorizationUrl": "String",
  "tokenUrl": "String",
  "refreshUrl": "String",
  "scopes": {
    "@odata.type": "microsoft.graph.oAuthScopeDictionary"
  }
}
```

