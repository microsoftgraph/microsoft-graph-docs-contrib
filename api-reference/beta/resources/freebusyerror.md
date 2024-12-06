---
title: "freeBusyError resource type"
description: "Represents error information from attempting to get the availability of a user, distribution list, or resource."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: calendar
author: "iamgirishck"
ms.date: 07/22/2024
---

# freeBusyError resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents error information from attempting to get the availability of a user, distribution list, or resource.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|message |String |Describes the error. |
|responseCode |String |The response code from querying for the availability of the user, distribution list, or resource. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.freeBusyError"
}-->

```json
{
  "message": "String",
  "responseCode": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "freeBusyError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


