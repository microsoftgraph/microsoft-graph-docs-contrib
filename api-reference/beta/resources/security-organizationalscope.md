---
title: "organizationalScope resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# organizationalScope resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|scopeNames|String collection|**TODO: Add Description**|
|scopeType|microsoft.graph.security.scopeType|**TODO: Add Description**.The possible values are: `deviceGroup`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.organizationalScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.organizationalScope",
  "scopeType": "String",
  "scopeNames": [
    "String"
  ]
}
```

