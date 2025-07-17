---
title: "siteSettings resource type"
description: "Represents the settings of a site."
author: "k-tsoi"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# siteSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings of a [site].

## Properties

|Property|Type|Description|
|:---|:---|:---|
|languageTag|String|The language tag for the language used on this site.|
|timeZone|String|Indicates the time offset for the time zone of the site from Coordinated Universal Time (UTC).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.siteSettings"
}
-->
``` json
{
    "languageTag": "String",
    "timeZone": "String"
}
```

[site]: site.md
