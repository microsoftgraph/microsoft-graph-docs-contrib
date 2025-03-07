---
title: "recommendedHuntingQuery resource type"
description: "Represents a Kusto Query Language (KQL) advanced hunting query."
ms.date: 01/29/2023
author: "AviadHasidof"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# recommendedHuntingQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Kusto Query Language (KQL) advanced hunting query.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|kqlText|String|The query string.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.recommendedHuntingQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.recommendedHuntingQuery",
  "kqlText" : "String"
}
```