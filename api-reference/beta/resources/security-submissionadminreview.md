---
title: "submissionAdminReview resource type"
description: "Represents admin review information for threat submission"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionAdminReview resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents admin review information for threat submission. Currently, only user reported email threat submission is supported and could be reviewed by administrator.

## Properties
| Property       | Type                     | Description                                  |
|:---------------|:-------------------------|:---------------------------------------------|
| reviewBy       | String                   | The reviewer email or other identity string. |
| reviewDateTime | DateTimeOffset           | The review date time.                        |
| reviewResult   | submissionResultCategory | The review result. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown` and `noResultAvailable`.  |

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

