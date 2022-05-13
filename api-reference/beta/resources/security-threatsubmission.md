---
title: "threatSubmission resource type"
description: "threat submission base type"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# threatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Properties
| Property        | Type                       | Description                                                                      | Key | Required |
|:----------------|:---------------------------|:---------------------------------------------------------------------------------|:----|:---------|
| id              | String                     | Threat submission id. When creation on post, it is not necessary.                | ✔   | ✔        |
| createdDateTime | DateTimeOffset             | When the threat submission was created.                                          | ❌   | ❌        |
| contentType     | submissionContentType      | email, url, file or app.                                                         | ❌   | ❌        |
| category        | submissionCategory         | not junk, spam, phishing or malware.                                             | ❌   | ✔        |
| status          | longRunningOperationStatus | If the threat submission check is finished.                                      | ❌   | ❌        |
| source          | submissionSource           | The threat submission source. Administrator or user.                             | ❌   | ❌        |
| createdBy       | submissionUserIdentity     | The submitter of the threat submission.                                          | ❌   | ❌        |
| result          | submissionResult           | The threat submission check result.                                              | ❌   | ❌        |
| adminReview     | submissionAdminReview      | User submission admin review                                                     | ❌   | ❌        |
| tenantId        | String                     | The tenant id. When creation on post, it is not necessary. Extracted from token. | ❌   | ❌        |
| clientSource    | submissionClientSource     | microsoft or other client.                                                       | ❌   | ❌        |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatSubmission",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatSubmission",
  "id": "String (identifier)",
  "tenantId": "String",
  "createdDateTime": "String (timestamp)",
  "contentType": "String",
  "category": "String",
  "source": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.security.submissionUserIdentity"
  },
  "status": "String",
  "result": {
    "@odata.type": "microsoft.graph.security.submissionResult"
  },
  "adminReview": {
    "@odata.type": "microsoft.graph.security.submissionAdminReview"
  },
  "clientSource": "String"
}
```

