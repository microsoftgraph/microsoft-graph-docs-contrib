---
title: "customQuestionAnswer resource type"
description: "Represents a registrant's answer to a custom registration question."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# customQuestionAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a registrant's answer to the [custom registration question](meetingregistrationquestion.md) associated with a [meetingRegistration](meetingregistration.md).

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| displayName | String | Display name of the custom registration question. Read-only. |
| questionId | String | ID the custom registration question. Read-only.|
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
