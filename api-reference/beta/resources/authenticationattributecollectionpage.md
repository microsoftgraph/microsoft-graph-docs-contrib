---
title: "authenticationAttributeCollectionPage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authenticationAttributeCollectionPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customStringsFileId|String|**TODO: Add Description**|
|views|[authenticationAttributeCollectionPageViewConfiguration](../resources/authenticationattributecollectionpageviewconfiguration.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationAttributeCollectionPage",
  "customStringsFileId": "String",
  "views": [
    {
      "@odata.type": "microsoft.graph.authenticationAttributeCollectionPageViewConfiguration"
    }
  ]
}
```

