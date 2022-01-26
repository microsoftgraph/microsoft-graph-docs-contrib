---
title: "siteSettings resource type"
description: "This resource represents the settings of a site."
author: k-tsoi
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# siteSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents the settings of a [site].

## Properties
|Property|Type|Description|
|:---|:---|:---|
|languageTag|String|The language tag of language used on this site.|
|timeZone|String|Indicates the time zone of the site using UTC Offset format.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.siteSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteSettings",
  "languageTag": "String",
  "timeZone": "String"
}
```

[site]: site.md