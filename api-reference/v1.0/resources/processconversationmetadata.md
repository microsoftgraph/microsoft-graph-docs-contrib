---
title: "processConversationMetadata resource type"
description: "Represents metadata for a content entry that is part of a conversation."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processConversationMetadata

Namespace: microsoft.graph

Represents metadata for a content entry that is part of a conversation, for example, a chat message, and an AI interaction. 

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessedResources|String collection|List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions).|
|content| [contentBase](../resources/contentbase.md)| Represents the actual content, either as text (`textContent`) or binary data (`binaryContent`). Optional if metadata alone is sufficient for policy evaluation. **Do not use for [contentActivities](../api/activitiescontainer-post-contentactivities.md)** Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|correlationId|String|An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation).|
|createdDateTime|DateTimeOffset|Required. Timestamp indicating when the original content was created (for example, file creation time, message sent time).|
|identifier|String|Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL).|
|isTruncated|Boolean|Required. Indicates if the provided `content` has been truncated from its original form (for example, due to size limits).|
|length|Int64|The length of the original content in bytes.|
|modifiedDateTime|DateTimeOffset|Required. Timestamp indicating when the original content was last modified. For ephemeral content like messages, this might be the same as `createdDateTime`.|
|name|String|Required. A descriptive name for the content (for example, file name, web page title, `Chat Message`).|
|parentMessageId|String|Identifier of the parent message in a threaded conversation, if applicable.|
|plugins|[aiInteractionPlugin](../resources/aiinteractionplugin.md) collection|List of plugins used during the generation of this message (relevant for AI/bot interactions).|
|sequenceNumber|Int64|A sequence number indicating the order in which content was generated or should be processed, required when `correlationId` is used.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processConversationMetadata",
  "baseType": "microsoft.graph.processContentMetadataBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processConversationMetadata",
  "identifier": "String",
  "content": {
    "@odata.type": "microsoft.graph.contentBase"
  },
  "name": "String",
  "correlationId": "String",
  "sequenceNumber": "Integer",
  "length": "Integer",
  "isTruncated": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "parentMessageId": "String",
  "accessedResources": [
    "String"
  ],
  "plugins": [
    {
      "@odata.type": "microsoft.graph.aiInteractionPlugin"
    }
  ]
}
```
