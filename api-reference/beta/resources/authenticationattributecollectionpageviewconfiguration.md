---
title: "authenticationAttributeCollectionPageViewConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authenticationAttributeCollectionPageViewConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|inputs|[authenticationAttributeCollectionInputConfiguration](../resources/authenticationattributecollectioninputconfiguration.md) collection|**TODO: Add Description**|
|title|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPageViewConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionPageViewConfiguration",
  "title": "String",
  "description": "String",
  "inputs": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionInputConfiguration"
    }
  ]
}
```

