---
title: "processContentMetadataBase resource type"
description: "Abstract base type representing metadata for a content entry being processed, including identifiers, content details, and timestamps."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentMetadataBase resource type

Namespace: microsoft.graph

Abstract base type representing metadata for a content entry being processed, including identifiers, content details, and timestamps. Use [processConversationMetadata](./processconversationmetadata.md) for conversation content and [processFileMetadata](./processfilemetadata.md) for file content.

This is an abstract type from which the following resources derive:
- [processConversationMetadata](../resources/processconversationmetadata.md)
- [processFileMetadata](../resources/processfilemetadata.md)

## Properties

| Property         | Type                                                                           | Description                                                                                                                                                           |
| :--------------- | :----------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| content          | [contentBase](../resources/contentbase.md)  | Represents the actual content, either as text (`textContent`) or binary data (`binaryContent`). Optional if metadata alone is sufficient for policy evaluation. **Do not use for [contentActivities](../api/activitiescontainer-post-contentactivities.md).**|
| correlationId    | String                                                                         | An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation).                     |
| createdDateTime  | DateTimeOffset                                                                 | Required. Timestamp indicating when the original content was created (for example, file creation time, message sent time).                                                               |
| identifier       | String                                                                         | Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL).       |
| isTruncated      | Boolean                                                                        | Required. Indicates if the provided `content` has been truncated from its original form (for example, due to size limits).                                                           |
| length           | Int64                                                                          | The length of the original content in bytes.                                                                                                                         |
| modifiedDateTime | DateTimeOffset                                                                 | Required. Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as `createdDateTime`.                    |
| name             | String                                                                         | Required. A descriptive name for the content (for example, file name, web page title, "Chat Message").                                                                                |
| sequenceNumber   | Int64                                                                          | A sequence number indicating the order in which content was generated or should be processed, required when `correlationId` is used.             |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
}
```
