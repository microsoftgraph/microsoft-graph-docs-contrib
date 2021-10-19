---
title: "insightsSettings resource type"
description: "Represents privacy settings for insights."
ms.localizationpriority: medium
author: "simonhult"
ms.prod: "insights"
doc_type: resourcePageType
---

# insightsSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to disable/enable calculation and visibility of item insights, meeting hours insights and people insights. 
Learn more about the privacy settings above by following the links below:
- [itemInsights](iteminsights.md) - Calculates relationship between users and items such as documents or sites in Microsoft 365.
- privacy setting for [meeting hours insights](https://support.microsoft.com/en-us/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) - Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook calendar in Microsoft 365.
- [peopleInsights](peopleInsights.md) - Calculates the relationship between users based on their public relationships and generates a of people relevant to a user. 
 

Use the [userInsightsSettings](userinsightssettings.md) resource to disable/enable calculation and visibility of item insights and meeting hours insights of a user. 

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get](../api/insightssettings-get.md)| [insightsSettings](insightssettings.md) | Read the properties of an **insightsSettings** object.|
| [Update](../api/insightssettings-update.md)| [insightsSettings](insightssettings.md) | Update an **insightsSettings** object.|


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if organization item insights are enabled; `false` if organization item insights or people insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure AD group, of which the members' item insights or people insights are disabled. Default is `empty`. Optional.|

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.insightsSettings"
}-->

```json
{
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```


