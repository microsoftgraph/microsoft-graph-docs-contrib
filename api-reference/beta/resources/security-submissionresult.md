---
title: "submissionResult resource type"
description: "Represents the result of a review after the threat submission is processed by Microsoft"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a review after the threat submission is processed by Microsoft.

## Properties
| Property           | Type                               | Description                                                             |
|:-------------------|:-----------------------------------|:------------------------------------------------------------------------|
| category           | submissionResultCategory           | The submission result category. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown` and `noResultAvailable`. |
| detail             | [submissionResultDetail](../resources/security-submissionresultdetail.md)             | Specifies the additional details provided by Microsoft to substantiate their analysis result. |
| detectedFiles      | Collection([security.submissionDetectedFile](../resources/security-submissiondetectedfile.md)) | Specifies the files detected by Microsoft in the submitted emails|
| detectedUrls       | Collection(String)                 | Specifes the URLs detected by Microsoft in the submitted email.|
| userMailboxSetting | userMailboxSetting                | Specifies the setting for user mailbox denoted by a comma separated string. |

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

