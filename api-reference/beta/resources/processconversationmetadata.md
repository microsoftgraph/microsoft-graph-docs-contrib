---
title: "processConversationMetadata resource type"
description: "Represents metadata for a content entry that is part of a conversation."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processConversationMetadata

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a content entry that is part of a conversation, for example, a chat message, and an AI interaction. 

Inherits from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessedResources_v2|[resourceAccessDetail](../resources/resourceaccessdetail.md) collection| Indicates the details about resources accessed by AI agents, including identifiers, access type, and status.|
|agents|[aiAgentInfo](../resources/aiagentinfo.md) collection| Indicates the information about an AI agent that participated in the preparation of the message.|
|content| [contentBase](../resources/contentbase.md)| Represents the actual content, either as text ([textContent](../resources/textcontent.md)) or binary data ([binaryContent](../resources/binarycontent.md)). Optional if metadata alone is sufficient for policy evaluation. **Do not use for [contentActivities](../api/activitiescontainer-post-contentactivities.md)**. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|correlationId|String|An identifier used to group multiple related content entries (for example, different parts of the same file upload, messages in a conversation). Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|createdDateTime|DateTimeOffset|Required. Timestamp when the original content was created (for example, file creation time, message sent time). Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|identifier|String|Required. A unique identifier for this specific content entry within the context of the calling application or enforcement plane (for example, message ID, file path/URL). Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|isTruncated|Boolean|Required. Indicates if the provided **content** has been truncated from its original form (for example, due to size limits). Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|length|Int64|The length of the original content in bytes. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|modifiedDateTime|DateTimeOffset|Required. Timestamp when the original content was last modified. For ephemeral content like messages, this might be the same as **createdDateTime**. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|name|String|Required. A descriptive name for the content (for example, file name, web page title, or chat message). Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|parentMessageId|String|Identifier of the parent message in a threaded conversation, if applicable.|
|plugins|[aiInteractionPlugin](../resources/aiinteractionplugin.md) collection|List of plugins used during the generation of this message (relevant for AI/bot interactions).|
|sequenceNumber|Int64|A sequence number indicating the order in which content was generated or should be processed, required when **correlationId** is used. Inherited from [processContentMetadataBase](../resources/processcontentmetadatabase.md).|
|accessedResources (deprecated)|String collection|List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions). The **accessedResources** property is deprecated and stopped returning data on August 20, 2025. Going forward, use the **accessedResources_v2** property.|

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
  "accessedResources": ["String"],
  "accessedResources_v2": [{"@odata.type": "microsoft.graph.resourceAccessDetail"}],
  "agents": [{"@odata.type": "microsoft.graph.aiAgentInfo"}],
  "content": {"@odata.type": "microsoft.graph.contentBase"},
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "identifier": "String",
  "isTruncated": "Boolean",
  "length": "Int64",
  "modifiedDateTime": "String (timestamp)",
  "name": "String",
  "parentMessageId": "String",
  "plugins": [{"@odata.type": "microsoft.graph.aiInteractionPlugin"}],
  "sequenceNumber": "Int64"
}
```
