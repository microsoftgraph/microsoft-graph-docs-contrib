---
title: "submissionResult resource type"
description: "threat submission result"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Threat submission result when threat submission is processed by system.

## Properties
| Property           | Type                               | Description                                                             | Required |
|:-------------------|:-----------------------------------|:------------------------------------------------------------------------|:---------|
| category           | submissionResultCategory           | The submission result category.                                         | ✔        |
| detail             | submissionResultDetail             | The submission result detail.                                           | ✔        |
| userMailboxSetting | userMailboxSetting                | The user mailbox setting flag string which is a comma separated string. | ❌        |
| detectedUrls       | Collection(String)                 | Detected urls in the email submission.                                  | ❌        |
| detectedFiles      | Collection([submissionDetectedFile](../resources/security-submissiondetectedfile.md)) | Detected files in the email submission.                                 | ❌        |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionResult",
  "category": "String",
  "detail": "String",
  "userMailboxSetting": "String",
  "detectedUrls": [
    "String"
  ],
  "detectedFiles": [
    {
      "@odata.type": "microsoft.graph.security.submissionDetectedFile"
    }
  ]
}
```

