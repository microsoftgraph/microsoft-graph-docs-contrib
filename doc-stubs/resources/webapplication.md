---
title: "webApplication resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# webApplication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|homePageUrl|String|**TODO: Add Description**|
|implicitGrantSettings|[implicitGrantSettings](../resources/implicitgrantsettings.md)|**TODO: Add Description**|
|logoutUrl|String|**TODO: Add Description**|
|oauth2AllowImplicitFlow|Boolean|**TODO: Add Description**|
|redirectUris|String collection|**TODO: Add Description**|
|redirectUriSettings|[redirectUriSettings](../resources/redirecturisettings.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplication",
  "homePageUrl": "String",
  "redirectUris": [
    "String"
  ],
  "redirectUriSettings": [
    {
      "@odata.type": "microsoft.graph.redirectUriSettings"
    }
  ],
  "oauth2AllowImplicitFlow": "Boolean",
  "logoutUrl": "String",
  "implicitGrantSettings": {
    "@odata.type": "microsoft.graph.implicitGrantSettings"
  }
}
```

