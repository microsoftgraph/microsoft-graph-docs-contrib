---
title: "processConversationMetadata"
toc.title: "processConversationMetadata (preview)"
description: "Represents metadata for a content entry that is part of a conversation (e.g., chat message, AI interaction)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# processConversationMetadata

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a content entry that originates from a conversational context, such as a chat message or an interaction with an AI assistant/bot. Includes information about parent messages and any resources or plugins involved. Inherits from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Properties

| Property          | Type                                                                                                   | Description                                                                                        |
| :---------------- | :----------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------- |
| accessedResources | String collection                                                                                      | List of resources (e.g., file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions). |
| parentMessageId   | String                                                                                                 | Identifier of the parent message in a threaded conversation, if applicable.                          |
| plugins           | [aiInteractionPlugin](../resources/aiinteractionplugin.md) collection | List of plugins used during the generation of this message (relevant for AI/bot interactions).       |

Inherits properties from [processContentMetadataBase](../resources/processcontentmetadatabase.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processConversationMetadata",
  "baseType": "microsoft.graph.processContentMetadataBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.processConversationMetadata",
  // Inherited properties from processContentMetadataBase
  "identifier": "String", // e.g., message ID
  "content": { "@odata.type": "microsoft.graph.textContent" }, // Often textContent
  "name": "String", // e.g., "Chat Message"
  "correlationId": "String", // e.g., conversation ID
  "sequenceNumber": "Int64",
  "length": "Int64",
  "isTruncated": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",

  // processConversationMetadata properties
  "parentMessageId": "String",
  "accessedResources": [ "String" ],
  "plugins": [ { "@odata.type": "microsoft.graph.aiInteractionPlugin" } ]
}
```
