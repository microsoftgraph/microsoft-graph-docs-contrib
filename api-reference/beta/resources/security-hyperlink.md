---
title: "hyperlink resource type"
description: "Represents the data used to create a hyperlink."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# hyperlink resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data used to create a hyperlink.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String| The name for this **hyperlink**.|
|url|String|The URL for this **hyperlink**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.hyperlink"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hyperlink",
  "name": "String",
  "url": "String"
}
```
