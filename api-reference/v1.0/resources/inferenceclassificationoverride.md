---
title: "inferenceClassificationOverride resource type"
description: "Represents a user's override for how incoming messages from a specific sender should always be classified as."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: outlook
doc_type: resourcePageType
ms.date: 05/23/2024
---

# inferenceClassificationOverride resource type

Namespace: microsoft.graph

Represents a user's override for how incoming messages from a specific sender should always be classified as.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Update Override](../api/inferenceclassificationoverride-update.md) | [inferenceClassificationOverride](inferenceclassificationoverride.md)	|Change the **ClassifyAs** field of an override as specified. |
|[Delete Override](../api/inferenceclassificationoverride-delete.md) | None |Delete an override specified by its ID. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|classifyAs|inferenceClassificationType| Specifies how incoming messages from a specific sender should always be classified as. The possible values are: `focused`, `other`.|
|id|string| The unique identifier of the override. Read-only.|
|senderEmailAddress|[emailAddress](emailaddress.md)|The email address information of the sender for whom the override is created.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.inferenceClassificationOverride"
}-->

```json
{
  "classifyAs": "string",
  "id": "string (identifier)",
  "senderEmailAddress": {"@odata.type": "microsoft.graph.emailAddress"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassificationOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

