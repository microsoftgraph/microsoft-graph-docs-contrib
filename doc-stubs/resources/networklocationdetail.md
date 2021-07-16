---
title: "networkLocationDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# networkLocationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|networkNames|String collection|**TODO: Add Description**|
|networkType|networkType|**TODO: Add Description**. Possible values are: `intranet`, `extranet`, `namedNetwork`, `trusted`, `trustedNamedLocation`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkLocationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkLocationDetail",
  "networkType": "String",
  "networkNames": [
    "String"
  ]
}
```

