---
title: "processConversationMetadata resource type"
toc.title: "processConversationMetadata resource type (preview)"
description: "Represents metadata for a content entry that is part of a conversation (for example, chat message, AI interaction)."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processConversationMetadata

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a content entry that is part of a conversation (for example, chat message, AI interaction). 

## Properties

| Property          | Type                                                                                                   | Description                                                                                        |
| :---------------- | :----------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------- |
| accessedResources | String collection                                                                                      | List of resources (for example, file URLs, web URLs) accessed during the generation of this message (relevant for bot interactions). |
| parentMessageId   | String                                                                                                 | Identifier of the parent message in a threaded conversation, if applicable.                          |
| plugins           | [aiInteractionPlugin](../resources/aiinteractionplugin.md) collection | List of plugins used during the generation of this message (relevant for AI/bot interactions).       |

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
  // Inherited properties from processContentMetadataBase
  "identifier": "String", // for example, message ID
  "content": { "@odata.type": "microsoft.graph.textContent" }, // Often textContent
  "name": "String", // for example, "Chat Message"
  "correlationId": "String", // for example, conversation ID
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
