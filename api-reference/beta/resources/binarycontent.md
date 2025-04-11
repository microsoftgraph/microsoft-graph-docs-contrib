---
title: "binaryContent resource type"
description: "Represents content provided as a binary data stream."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# binaryContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content provided as a binary data stream (Base64 encoded). Typically used for processing files within a [processFileMetadata](../resources/processfilemetadata.md) context. Inherits from [contentBase](../resources/contentbase.md).

## Properties

| Property | Type   | Description                                      |
| :------- | :----- | :----------------------------------------------- |
| data     | Binary | The binary content, encoded as a Base64 string. |

Inherits properties from [contentBase](../resources/contentbase.md).

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
