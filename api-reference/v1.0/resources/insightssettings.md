---
title: "insightsSettings resource type"
description: "Represents privacy settings for insights."
ms.localizationpriority: medium
author: "simonhult"
ms.subservice: "insights"
doc_type: resourcePageType
---

# insightsSettings resource type

Represents settings to calculate and manage the display or programmatic return of a specific type of insights in an organization.

Item insights and [meeting hours insights](https://support.microsoft.com/office/suggested-meeting-hours-0613d113-d7c1-4faa-bb11-c8ba30a78ef1) represent relationships between users and items such as documents, sites, and other content types in Microsoft 365. Programmatically, they're represented by the [itemInsights](iteminsights.md) resource. You can get documents that are [shared](../api/insights-list-shared.md) with a user, [trending](../api/insights-list-trending.md) around a user, or [used](../api/insights-list-used.md) by a user. You can use **insightsSettings** to [customize the privacy settings for calculating, displaying, or returning item insights in an organization](/graph/insights-customize-item-insights-privacy).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List itemInsights](../api/peopleadminsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of the [insightsSettings](insightssettings.md) resource for displaying item insights in an organization. |
| [Update insightsSettings](../api/insightssettings-update.md) | [insightsSettings](insightssettings.md) | Update the properties of an **insightsSettings** resource to manage the display or return of the specified type of insights, which can be contact insights, item insights, or people insights. |


## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if insights of the specified type are enabled for the organization; `false` if insights of the specified type are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of a Microsoft Entra group, of which the specified type of insights are disabled for its members. Default is `empty`. Optional.|

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
