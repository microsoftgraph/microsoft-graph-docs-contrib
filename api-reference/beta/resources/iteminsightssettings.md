---
title: "itemInsightsSettings resource type"
description: "Represents privacy settings for itemInsights."
localization_priority: Normal
author: "simonhult"
ms.prod: "insights"
doc_type: resourcePageType
---

# itemInsightsSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents privacy settings for [itemInsights](iteminsights.md), which configure the visibility of Graph-derived insights, between users and other items in the Graph (such as documents or sites) across apps and services in Microsoft 365.

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get](../api/organizationsettings-get-iteminsights.md)| [itemInsightsSettings](iteminsightssettings.md) | Read the properties of an **itemInsightsSettings** object. |
| [Update](../api/organizationsettings-update-iteminsights.md)| [itemInsightsSettings](iteminsightssettings.md) | Update an **itemInsightsSettings** object.|


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| **true** (default) if organization item insights are enabled; **false** if organization item insights are disabled for all users without exceptions. Optional.|
|disabledForGroup|String|(default empty) an Id of Azure Active Directory group, whose members' item insights are disabled. Optional.|

## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.itemInsightsSettings"
}-->

```json
{
  "isEnabledInOrganization": "Boolean",
  "disabledForGroup": "String"
}
```
