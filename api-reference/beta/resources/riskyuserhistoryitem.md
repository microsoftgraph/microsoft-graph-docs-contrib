---
title: "riskyUserHistoryItem resource type"
description: ""
author: ""
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# riskyUserHistoryItem resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property       | Type    | Description |
|:---------------|:--------|:------------|
| userId         | string  | The id of the user |
| initiatedBy    | bool    | The id of actor that does the operation |
| activity       | [riskUserActivity](riskuseractivity.md)| The activity related to user risk level change | 

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskyUserHistoryItem",
  "baseType": "microsoft.graph.riskyUser"
}-->

```json
{
    "userId": "string",
    "initiatedBy": "bool",
    "activity": {"@odata.type": "microsoft.graph.riskUserActivity"}
}
```


<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
   
  ]
}
-->
