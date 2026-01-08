---
title: "policyLocation resource type"
description: "Abstract base type representing a location like a domain or URL, to which a data protection policy applies."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourceTypePageType
---

# policyLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing a location (like a domain or URL) to which a data protection policy applies. Use [policy location application](../resources/policylocationapplication.md) for application locations, [policy location domain](../resources/policylocationdomain.md) for domain locations, or [policy location URL](../resources/policylocationurl.md) for URL locations.

>**Note** This is an abstract type and isn't instantiated directly.

## Properties

| Property | Type   | Description                                                    |
| :------- | :----- | :------------------------------------------------------------- |
| value    | String | The actual value representing the location (for example, "contoso.com", "https://partner.contoso.com/upload", "83ef198a-0396-4893-9d4f-d36efbffcaaa"). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource. 
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.policyLocation",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyLocation",
  "value": "String"
}
```
