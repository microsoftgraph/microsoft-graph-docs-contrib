---
title: "outlookUser resource type"
description: "Represents the Outlook services available to a user."
author: "SuryaLashmiS"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# outlookUser resource type

Namespace: microsoft.graph


Represents the Outlook services available to a user.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create category](../api/outlookuser-post-mastercategories.md) | [outlookCategory](outlookcategory.md) |Create an **outlookCategory** object in the user's master list of categories.|
|[List categories](../api/outlookuser-list-mastercategories.md) | [outlookCategory](outlookcategory.md) collection |Get all the categories that have been defined for the user.|
|[Get language choices](../api/outlookuser-supportedlanguages.md) | [localeInfo](localeinfo.md) collection | Get the list of locales and languages that is supported for the user, as configured on the user's mailbox server. |
|[Get time zone choices](../api/outlookuser-supportedtimezones.md) | [timeZoneInformation](timezoneinformation.md) collection | Get the list of time zones that is supported for the user, as configured on the user's mailbox server. |


## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|masterCategories|[outlookCategory](../resources/outlookcategory.md) collection| A list of categories defined for the user. |

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.outlookUser",
  "@odata.annotations": [
    {
      "property": "masterCategories",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    }
  ]
}-->
```json
{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outlookUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

