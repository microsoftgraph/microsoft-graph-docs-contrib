---
title: "userInsightsSettings resource type"
description: "Represents user privacy settings for item insights and meeting hours insights."
ms.localizationpriority: medium
author: "simonhult"
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# userInsightsSettings resource type

Namespace: microsoft.graph

Represents user privacy settings for [itemInsights](iteminsights.md) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1). Use this resource to enable or disable the calculation and visibility of item insights and meeting hours insights for a user.

- Item insights: Calculates the relationships between users and items such as documents or sites in Microsoft 365.  
- Meeting hours insights: Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook calendar in Microsoft 365.

Use the [insightsSettings](insightssettings.md) resource to enable or disable the calculation and visibility of item insights, meeting hours insights, and people insights at the organizational level.

## Methods

| Method                                          | Return Type                                     | Description                                                 |
|:------------------------------------------------|:------------------------------------------------|:------------------------------------------------------------|
| [Get](../api/userinsightssettings-get.md)       | [userInsightsSettings](userinsightssettings.md) | Get the user-customizable privacy settings for [itemInsights](../resources/iteminsights.md) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1).   |
| [Update](../api/userinsightssettings-update.md) | [userInsightsSettings](userinsightssettings.md) | Update the privacy settings for [itemInsights](../resources/iteminsights.md) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) of a user. |

## Properties

| Property  | Type     | Description                                                                                                                                                         |
|-----------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| isEnabled | Boolean  | `True` if the user's **itemInsights** and meeting hours insights are enabled; `false` if the user's **itemInsights** and meeting hours insights are disabled. The default value is `true`. Optional.|

## JSON representation

The following JSON representation shows the resource type.

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
