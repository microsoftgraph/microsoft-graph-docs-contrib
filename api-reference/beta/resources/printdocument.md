---
title: printDocument resource type
description: Represents a document being printed.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printDocument resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a document being printed.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [uploadData](../api/printdocument-uploaddata.md) | None | Upload a single binary segment of the **printDocument**. |
| [Download binary file](../api/printdocument-get-file.md) | Download Url | Download the binary file associated with the **printDocument**. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The document's identifier. Read-only.|
|displayName|String|The document's name. Read-only.|
|contentType|String|The document's content (MIME) type. Read-only.|
|size|Int64|The document's size in bytes. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printDocument"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "mimeType": "String",
  "sizeInBytes": 12345
}

```


