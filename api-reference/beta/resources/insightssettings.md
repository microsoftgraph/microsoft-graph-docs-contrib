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

Represents settings to calculate and manage the display or return of a specific type of insights in an organization. The insights can be item insights or people insights. 

Use the [userInsightsSettings](userinsightssettings.md) resource to disable/enable calculation and visibility of item insights and meeting hours insights of a user. 

Learn more about the privacy settings by following the links below:
- [itemInsights](iteminsights.md) resource - Calculates relationship between users and items such as documents or sites in Microsoft 365.
- Privacy settings for [people insights](/graph/insghts-customize-people-insights-privacy?view=graph-rest-beta) - Calculates the relationship between users based on their public relationships and generates a list of people relevant to a user. 
- Privacy settings for [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) - Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook calendar in Microsoft 365.


## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [List itemInsights](../api/organizationsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the _settings_ in an [insightsSettings](insightssettings.md) object for displaying item insights in an organization. |
| [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) | [insightsSettings](insightssettings.md) | Get the _settings_ in an [insightsSettings](insightssettings.md) object for displaying people insights in an organization. |
| [Update insightsSettings](../api/insightssettings-update.md) | [insightsSettings](insightssettings.md) | Update the properties of an **insightsSettings** resource to manage the display or return of the specified type of insights, which can be item insights or people insights. |


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if the specified type of insights are enabled for the organization; `false` if the specified type of insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure AD group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|

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


