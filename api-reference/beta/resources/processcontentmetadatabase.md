---
title: "processContentMetadataBase"
toc.title: "processContentMetadataBase (preview)"
description: "Abstract base type representing metadata for a content entry being processed, including identifiers, content details, and timestamps."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# processContentMetadataBase complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing metadata for a content entry being processed, including identifiers, content details, and timestamps. Submitted for processing via `processContent` or `processContentAsync`. Contains common properties like identifiers, content reference, name, timestamps, and size information. Derived types (`processConversationMetadata`, `processFileMetadata`) add context-specific details.

## Properties

| Property         | Type                                                                           | Description                                                                                                                                                           |
| :--------------- | :----------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| content          | [contentBase](../resources/contentbase.md)  | Represents the actual content, either as text (`textContent`) or binary data (`binaryContent`). Optional if metadata alone is sufficient for policy evaluation. |
| correlationId    | String                                                                         | An identifier used to group multiple related content entries (e.g., different parts of the same file upload, messages in a conversation).                     |
| createdDateTime  | DateTimeOffset                                                                 | Timestamp indicating when the original content was created (e.g., file creation time, message sent time).                                                               |
| identifier       | String                                                                         | A unique identifier for this specific content entry within the context of the calling application or enforcement plane (e.g., message ID, file path/URL).       |
| isTruncated      | Boolean                                                                        | Indicates if the provided `content` has been truncated from its original form (e.g., due to size limits).                                                           |
| length           | Int64                                                                          | The length of the original content in bytes.                                                                                                                         |
| modifiedDateTime | DateTimeOffset                                                                 | Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as `createdDateTime`.                    |
| name             | String                                                                         | A descriptive name for the content (e.g., file name, web page title, "Chat Message").                                                                                |
| sequenceNumber   | Int64                                                                          | A sequence number indicating the order in which content was generated or should be processed, especially relevant when `correlationId` is used.             |

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type. Note that this is an abstract type and won't be instantiated directly.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.processContentMetadataBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processContentMetadataBase",
  "identifier": "String",
  "content": { "@odata.type": "microsoft.graph.contentBase" },
  "name": "String",
  "correlationId": "String",
  "sequenceNumber": "Int64",
  "length": "Int64",
  "isTruncated": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
  // Derived types specify the exact @odata.type and may add properties
}
```
