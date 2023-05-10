---
title: "recommendedHuntingQuery resource type"
description: "Hunting kql query related to the incdient"
ms.date: 01/29/2023
author: "AviadHasidof"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# recommendedHuntingQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Hunting kql query related to the incdient

## Properties
|Property|Type|Description|
|:---|:---|:---|
|kqlText|String|The hunting query in Kusto Query Language (KQL)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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