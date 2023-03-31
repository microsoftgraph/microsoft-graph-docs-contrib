---
title: "hyperlink resource type"
description: "Represents the data used to create a hyperlink."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
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

The following is a JSON representation of the resource.
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
