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

Represents _settings_ to calculate and manage the display or programmatic return of a specific type of insights in an organization. The insights can be contact insights, item insights, meeting hours insights, or people insights. 

Contact insights represent intelligent suggestions to organize user contacts in Microsoft 365. Programmatically, user contacts are represented by the [contact](contact.md) resource. An example of a contact insight is merge suggestions for duplicate contacts, available for end users in Outlook.

Item insights and [meeting hours insights](https://support.microsoft.com/office/suggested-meeting-hours-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) represent relationships between users and items such as documents, sites, and other content types in Microsoft 365. Programmatically, they are represented by the [itemInsights](iteminsights.md) resource. You can get documents that are [shared](../api/insights-list-shared.md) with a user, [trending](../api/insights-list-trending.md) around a user, or [used](../api/insights-list-used.md) by a user. You can use **insightsSettings** to [customize the privacy settings for calculating, displaying or returning item insights in an organization](/graph/insights-customize-item-insights-privacy).

People insights represent connections of people who are relevant to or work with one another based on their public relationships. Programmatically, individual people are represented by the [person](person.md) resource. You can [use the people API to get people insights](/graph/people-example). You can use **insightsSettings** to [customize the privacy settings for displaying or returning people insights](/graph/insights-customize-people-insights-privacy).

In contrast, for item insights and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1), you can also manage their calculation and visibility at a _user_ level by using the [userInsightsSettings](userinsightssettings.md) resource.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List contactInsights](../api/organizationsettings-list-contactinsights.md) | [insightsSettings](insightssettings.md) | Get the _settings_ in an [insightsSettings](insightssettings.md) object for displaying contact insights in an organization. |
| [List itemInsights](../api/organizationsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the _settings_ in an [insightsSettings](insightssettings.md) object for displaying item insights in an organization. |
| [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) | [insightsSettings](insightssettings.md) | Get the _settings_ in an [insightsSettings](insightssettings.md) object for displaying people insights in an organization. |
| [Update insightsSettings](../api/insightssettings-update.md) | [insightsSettings](insightssettings.md) | Update the properties of an **insightsSettings** resource to manage the display or return of the specified type of insights, which can be contact insights, item insights, or people insights. |


## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if the specified type of insights are enabled for the organization; `false` if the specified type of insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure Active Directory group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.insightsSettings"
}-->

```json
{
  "disabledForGroup": "String",
  "isEnabledInOrganization": "Boolean"
}
```





