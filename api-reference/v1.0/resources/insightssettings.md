---
title: "insightsSettings resource type"
description: "Represents settings to calculate and manage the display or programmatic return of a specific type of insights in an organization."
ms.localizationpriority: medium
author: "larsb"
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# insightsSettings resource type

Namespace: microsoft.graph

Represents settings to calculate and manage the display or programmatic return of a specific type of insights in an organization.

Item insights and [meeting hours insights](https://support.microsoft.com/office/suggested-meeting-hours-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) represent relationships between users and items such as documents, sites, and other content types in Microsoft 365. Programmatically, they're represented by the [itemInsights](iteminsights.md) resource. You can get documents that are [shared](../api/insights-list-shared.md) with a user, [trending](../api/insights-list-trending.md) around a user, or [used](../api/insights-list-used.md) by a user. You can use **insightsSettings** to [customize the privacy settings for calculating, displaying, or returning item insights in an organization](/graph/insights-customize-item-insights-privacy).

In contrast, for item insights and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1), you can also manage their calculation and visibility at a user level by using the [userInsightsSettings](userinsightssettings.md) resource.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List itemInsights](../api/peopleadminsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](../resources/insightssettings.md) object to display or return item insights in an organization. |
| [Update insightsSettings](../api/insightssettings-update.md) | [insightsSettings](insightssettings.md) | Update privacy settings to display or return the specified type of insights in an organization. Currently, [itemInsights](iteminsights.md) is the only supported type of settings. |

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|disabledForGroup|String| The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. The default value is `null`. Optional.|
|isEnabledInOrganization|Boolean| `true` if insights of the specified type are enabled for the organization; `false` if insights of the specified type are disabled for all users without exceptions. The default value is `true`. Optional.|

## JSON representation

The following JSON representation shows the resource type.

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
