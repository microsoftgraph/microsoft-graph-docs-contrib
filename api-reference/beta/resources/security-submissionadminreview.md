---
title: "submissionAdminReview resource type"
description: "threat submission admin review data"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionAdminReview resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Admin review information for user reported messages.

## Properties
| Property       | Type                     | Description                                  |
|:---------------|:-------------------------|:---------------------------------------------|
| reviewDateTime | DateTimeOffset           | The review date time.                        |
| reviewResult   | submissionResultCategory | The review result                            |
| reviewBy       | String                   | The reviewer email or other identity string. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionAdminReview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionAdminReview",
  "reviewDateTime": "String (timestamp)",
  "reviewResult": "String",
  "reviewBy": "String"
}
```

