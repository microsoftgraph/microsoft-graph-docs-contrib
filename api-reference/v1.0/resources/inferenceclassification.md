---
title: "inferenceClassification resource type"
description: "Classification of a user's messages to enable focus on those that are more relevant or important to the user. "
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: outlook
doc_type: resourcePageType
ms.date: 05/23/2024
---

# inferenceClassification resource type

Namespace: microsoft.graph

Classification of a user's messages to enable focus on those that are more relevant or important to the user.

For more information, see [Manage Focused Inbox](manage-focused-inbox.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create Override](../api/inferenceclassification-post-overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md)| Create an override for a sender identified by an SMTP address. Future messages from that SMTP address will be consistently classified as specified in the override.|
|[List Overrides](../api/inferenceclassification-list-overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| Get the overrides that a user has set up to always classify messages from certain senders in specific ways.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|overrides|[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| A set of overrides for a user to always classify messages from specific senders in certain ways: `focused`, or `other`. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.inferenceClassification",
  "@odata.annotations": [
    {
      "property": "overrides",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    }
  ]
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

