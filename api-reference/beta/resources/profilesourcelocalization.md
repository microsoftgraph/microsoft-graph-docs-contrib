---
title: "profileSourceLocalization resource type"
description: "Represents configurations that allow an administrator to customize the appearance of the displayName and webUrl properties in a profile source."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
---

# profileSourceLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configurations that allow an administrator to customize the appearance of the **displayName** and **webUrl** properties in a profile source. The administrator can define a default display name and web URL, along with a set of alternative translations for the languages supported in their organization.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Localized display name.|
|languageTag|String|Language locale.|
|webUrl|String|Localized profile source URL.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.profileSourceLocalization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profileSourceLocalization",
  "displayName": "String",
  "languageTag": "String",
  "webUrl": "String"
}
```

