---
title: "submissionResult resource type"
description: "Represents threat submission result when threat submission is processed by Microsoft"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat submission result after threat submission is processed by Microsoft.

## Properties
| Property           | Type                               | Description                                                             |
|:-------------------|:-----------------------------------|:------------------------------------------------------------------------|
| category           | submissionResultCategory           | The submission result category. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown` and `noResultAvailable`. |
| detail             | submissionResultDetail             | The submission result detail.                                           |
| detectedFiles      | Collection([security.submissionDetectedFile](../resources/security-submissiondetectedfile.md)) | Detected files in the email submission. |
| detectedUrls       | Collection(String)                 | Detected urls in the email submission.                                  |
| userMailboxSetting | userMailboxSetting                | The user mailbox setting flag string which is a comma separated string from a bitfield enum. |

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

