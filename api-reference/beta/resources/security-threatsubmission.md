---
title: "threatSubmission resource type"
description: "Represent threat submission"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# threatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type for threat submission. 

It is used to submit suspected spam emails, malware emails, phish emails, malware urls, phish urls and malware email attachments to Microsoft 365 Defender for Office (MDO), as well as to submit suspicious files to M365 Defender for Endpoint (MDE).

It could also be used to submit false positive cases which should not have been blocked by MDO, e.g, not junk emails, safe urls and safe email attachments.

Inherits from [entity](../resources/entity.md).

## Properties
| Property        | Type                       | Description                                                                      |
|:----------------|:---------------------------|:---------------------------------------------------------------------------------|
| adminReview     | [security.submissionAdminReview](../resources/security-submissionadminreview.md)| User submission admin review |
| category        | submissionCategory         | not junk, spam, phishing or malware.                                             |
| clientSource    | submissionClientSource     | microsoft or other client.                                                       |
| contentType     | submissionContentType      | email, url, file or app.                                                         |
| createdBy       | [security.submissionUserIdentity](../resources/security-submissionuseridentity.md)     | The submitter of the threat submission.   |
| createdDateTime | DateTimeOffset             | When the threat submission was created.                                          |
| id              | String                     | Threat submission id. When creation on post, it is not necessary.                |
| result          | [security.submissionResult](../resources/security-submissionresult.md)          | The threat submission check result.  |
| source          | submissionSource           | The threat submission source. Administrator or user.                             |
| status          | longRunningOperationStatus | If the threat submission check is finished.                                      |
| tenantId        | String                     | The tenant id. When creation on post, it is not necessary. Extracted from token. |

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

