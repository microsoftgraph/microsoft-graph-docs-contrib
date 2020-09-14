---
title: "errorDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# errorDetail resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|details|[innerErrorDetail](../resources/innererrordetail.md) collection|**TODO: Add Description**|
|errorCode|String|**TODO: Add Description**|
|message|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.errorDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.errorDetail",
  "errorCode": "String",
  "message": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.innerErrorDetail"
    }
  ]
}
```

