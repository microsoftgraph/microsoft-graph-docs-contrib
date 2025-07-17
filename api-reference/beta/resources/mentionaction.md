---
author: daspek
description: The MentionAction resource provides information about an activity that mentioned people.
ms.date: 09/14/2017
title: MentionAction
ms.localizationpriority: medium
ms.subservice: insights
doc_type: resourcePageType
---

# MentionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **MentionAction** resource provides information about an [activity][] that mentioned people.

[activity]: itemactivity.md

## Properties

| Property   | Type                       | Description                                           |
| :--------- | :------------------------- | :---------------------------------------------------- |
| mentionees | [identitySet][] collection | The identities of the users mentioned in this action. |

[identitySet]: identityset.md

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.mentionAction"
}-->

```json
{
  "mentionees": [{"@odata.type": "microsoft.graph.identitySet"}]
}
```

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The MentionAction object provides information about who was mentioned during an activity.",
  "keywords": "activities,activity,action,mention",
  "section": "documentation",
  "tocPath": "Resources/MentionAction",
  "suppressions": []
}
-->
