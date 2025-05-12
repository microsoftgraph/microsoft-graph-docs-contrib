---
title: "binaryContent resource type"
toc.title: "binaryContent resource type (preview)"
description: "Represents content provided as a Base64 encoded binary data stream."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# binaryContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content provided as a Base64 encoded binary data stream.

## Properties

| Property | Type   | Description                                      |
| :------- | :----- | :----------------------------------------------- |
| data     | Binary | The binary content, encoded as a Base64 string. Inherited from [contentBase](../resources/contentbase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.binaryContent",
  "baseType": "microsoft.graph.contentBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.binaryContent",
  "data": "Binary"
}
```
