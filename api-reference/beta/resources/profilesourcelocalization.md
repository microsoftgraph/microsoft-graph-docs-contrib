---
title: "profileSourceLocalization resource type"
description: "Allows an administrator to customize the appearance of the displayName and webUrl properties in a profile source. The administrator can define a default display name and web url and a set of alternative translations for the languages supported in their organization."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
---

# profileSourceLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows an administrator to customize the appearance of the **displayName** and **webUrl** properties in a profile source. The administrator can define a default display name and web url and a set of alternative translations for the languages supported in their organization.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Localized displayName.|
|languageTag|String|Language locale.|
|webUrl|String|Localized profile source url.|

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
  "languageTag": "String",
  "displayName": "String",
  "webUrl": "String"
}
```

