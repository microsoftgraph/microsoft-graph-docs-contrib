---
title: "userInsightsSettings resource type"
description: "A resource representing a users item insights preferences"
localization_priority: Normal
author: "simonhul"
ms.prod: "insights"
doc_type: resourcePageType
---

# userInsightsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user privacy settings for [itemInsights](iteminsights.md) and meeting hours insights. Use this API to disable/enable calculation and visibility of item insights and meeting hours insights of a user. 

- Item insights: Calculates relationship between users and items such as documents or sites in Microsoft 365.  
- Meeting hours insights: Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook calendar in Microsoft 365.

## Methods

| Method                                                 | Return Type                                                   | Description                                                                                        |
|:-------------------------------------------------------|:--------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|
| [Get](../api/userinsightssettings-get.md)       | [userInsightsSettings](userinsightssettings.md) | Read properties of an **userinsightssettings** object.  |
| [Update](../api/userinsightssettings-update.md) | [userInsightsSettings](userinsightssettings.md) | Update properties of the **userinsightssettings** object. |

## Properties
| Property                   | Type                                                  | Description                                                                                                                                                         |
|----------------------------|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| isEnabled     | Boolean  |  `true` if user's item insights are enabled; `false` if user's item insights are disabled. Default is `true`. Optional.|

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.userInsightsSettings"
}-->

```json
{
  "isEnabled": "Boolean"
}
```


