---
title: "error resource type"
description: "Represents an error that occurred during a cross-tenant migration."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# error resource type

Namespace: microsoft.graph

Represents an error that occurred during a cross-tenant migration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|String|The error code.|
|message|String|The message for the error.|

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
