---
title: printDocument resource type
description: Represents a document being printed.
author: nilakhan
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printDocument resource type

Namespace: microsoft.graph

Represents a document being printed.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create upload session](../api/printdocument-createuploadsession.md) | [uploadSession](uploadsession.md) | Create an upload session to iteratively upload ranges of binary file of the **printDocument**. |
| [Download binary file](../api/printdocument-get-file.md) | Download Url | Download the binary file associated with the **printDocument**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|The document's content (MIME) type. Read-only.|
|displayName|String|The document's name. Read-only.|
|id|String|The document's identifier. Read-only.|
|size|Int64|The document's size in bytes. Read-only.|
|uploadedDateTime|DateTimeOffset|The time the document was uploaded. Read-only|
|downloadedDateTime|DateTimeOffset|The time the document was downloaded. Read-only|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printDocument",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printDocument",
  "id": "String (identifier)",
  "displayName": "String",
  "contentType": "String",
  "size": "Integer"
}
```
