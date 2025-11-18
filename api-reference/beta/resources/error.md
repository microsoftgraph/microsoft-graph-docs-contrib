---
title: "Error resource type"
description: "Error resource"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# Error resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an error with a message and error code.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code|
|message|String|The message for the error|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.error"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.error",
  "code": "String",
  "message": "String"
}
```

