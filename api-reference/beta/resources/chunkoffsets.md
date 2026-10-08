---
title: "chunkOffsets resource type"
description: "Provides positional offset metadata for the text chunks that produced caller-supplied embedding data."
author: "quyenxhuynh"
ms.date: 08/31/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# chunkOffsets resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides positional offset metadata for the text chunks that produced caller-supplied embedding data. This type is used by the **chunkOffsets** property of [embeddingInput](../resources/embeddinginput.md) and uses base64-encoded integer values instead of floats.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|lengths|String|An optional base64 string that encodes a packed sequence of little-endian signed 32-bit integers. Decoded values represent chunk lengths and must be nonnegative. The decoded byte count must be divisible by 4. When supplied, the decoded element count must match **starts**, and elements pair by index.|
|starts|String|A base64 string that encodes a packed sequence of little-endian signed 64-bit integers. Decoded values represent chunk start positions and must be nonnegative and in ascending order. The decoded byte count must be divisible by 8.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chunkOffsets"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.chunkOffsets",
  "starts": "String",
  "lengths": "String"
}
```
