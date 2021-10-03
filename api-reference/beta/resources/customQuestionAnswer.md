---
title: "customQuestionAnswer resource type"
description: "Answer to a registration question."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# customQuestionAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Registrant's answer to the custom registration question of a [meetingRegistration](meetingRegistration.md).

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| displayName | String | Display name of the custom registration question. Read-only. |
| questionId | String | Id the custom registration question. Read-only.|
| value | String | Answer to the custom registration question. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customQuestionAnswer"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "value": "String"
}
```
