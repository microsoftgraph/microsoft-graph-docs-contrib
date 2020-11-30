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

Represents privacy settings for [itemInsights](iteminsights.md) and privacy setting for meeting hours insights. Use this API to disable/enable calculation and visibility of item insights and meeting hours insights. 

- Item insights: Calculates relationship between users and items such as documents or sites in Microsoft 365.  
- Meeting hours insights: Calculates a person's calendar meeting hours based on activities in Word, Excel, PowerPoint, email, and Outlook Calendar in Microsoft 365.

> [!NOTE]
> As of November 2020, meeting hours insights are being rolled out to customers and are not yet generally available. 

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get](../api/iteminsightssettings-get.md)| [itemInsightsSettings](iteminsightssettings.md) | Read the properties of an **itemInsightsSettings** object. |
| [Update](../api/iteminsightssettings-update.md)| [itemInsightsSettings](iteminsightssettings.md) | Update an **itemInsightsSettings** object.|


## Properties
| Property   | Type|Description|
|:---------------|:--------|:----------|
|isEnabledInOrganization|Boolean| `true` if organization item insights are enabled; `false` if organization item insights are disabled for all users without exceptions. Default is `true`. Optional.|
|disabledForGroup|String| The ID of an Azure AD group, of which the members' item insights are disabled. Default is `empty`. Optional.|

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


