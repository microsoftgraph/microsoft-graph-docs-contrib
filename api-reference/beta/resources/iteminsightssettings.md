---
title: "itemInsightsSettings resource type"
description: "Represents privacy settings for itemInsights."
localization_priority: Normal
author: "elmakhmu"
ms.prod: "insights"
doc_type: resourcePageType
---

# itemInsightsSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents privacy settings for [itemInsights](iteminsights.md).
Rep to configure the visibility of Graph-derived insights, between users and other items in the Graph (such as documents or sites) across apps and services in Microsoft 365.

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get](../api/organizationsettings-get-iteminsights.md)| [itemInsightsSettings](iteminsightssettings.md) | Read the properties of a **itemInsightsSettings** object. |
| [Update](../api/organizationsettings-update-iteminsights.md)| [itemInsightsSettings](iteminsightssettings.md) | Update a **itemInsightsSettings** object.|


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| **true**(default) if organization item insights are enabled; **false** if organization item insights are disabled for all users without exceptions. Not required.|
|disabledForGroup|String|(default empty) an Id of security AAD group, whose members' item insights are disabled. Not required.|

## JSON representation

Here is a JSON representation of the resource
<!-- { "blockType": "ignored" } -->

```json
{
  "isEnabledInOrganization": "boolean",
  "disabledForGroup": "strings"
}
```
