---
title: "shiftActivity resource type"
description: "Represents an activity in a shift."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# shiftActivity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an activity in a [shift](shift.md).

## Properties
| Property                         | Type                    | Description                                                                                                                                                                        |
|------------------------------|-------------------------|---------------------------------------------------------------------------------------------|
| isPaid               | `bool`                  | Indicates whether the `microsoft.graph.user` should be paid for the acitivity during their `shift`.     |
| startDateTime               | `DateTimeOffset`                  | The start date and time for the `shiftActivity`.     |
| endDateTime               | `DateTimeOffset`                  | The end date and time for the `shiftActivity`.     |
| code               | `string`                  | Customer defined code for the `shiftActivity`.     |
| displayName               | `string`                  | The name of the `shiftActivity`.     |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shiftActivity"
}-->
```json
{
  "isPaid": true,
  "startDateTime": "2018-10-04T00:58:45.340Z",
  "endDateTime": "2018-10-04T00:58:45.340Z",
  "code": "string",
  "displayName": "string"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "shiftActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/shiftactivity.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
