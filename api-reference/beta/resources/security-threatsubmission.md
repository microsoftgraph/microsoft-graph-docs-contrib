---
title: "threatSubmission resource type"
description: "Represents threat submission which is used to submit suspected email, url, file threats to Microsoft 365 Defender."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# threatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

It is used to submit suspected spam emails, malware emails, phish emails, malware urls, phish urls, phish email attachments and malware email attachments to Microsoft 365 Defender for Office (MDO), as well as to submit suspicious files to Microsoft 365 Defender for Endpoint (MDE).

It could also be used to submit false positive cases that should not be blocked by MDO. For example, not junk emails, safe urls and safe email attachments.

This is an abstract type. Inherits from [entity](../resources/entity.md). Base type of [emailThreatSubmission](../resources/security-emailthreatsubmission.md), [urlThreatSubmission](../resources/security-urlthreatsubmission.md), [fileThreatSubmissin](../resources/security-filethreatsubmission.md).

## Properties
| Property        | Type                       | Description                                                                      |
|:----------------|:---------------------------|:---------------------------------------------------------------------------------|
| adminReview     | [security.submissionAdminReview](../resources/security-submissionadminreview.md)| Specifies the admin review property which constitutes of who reviewed the user submission, when and what was it identified as. |
| category        | submissionCategory         | Specifies the category of the submission. The possible values are: `notJunk`, `spam`, `phishing` and `malware`.|
| clientSource    | submissionClientSource     | Specifies the source of the submission. The possible values are: `microsoft` and `other`. |
| contentType     | submissionContentType      | Specifies the type of content being submitted. The possible values are: `email`, `url`, `file` and `app`.  |
| createdBy       | [security.submissionUserIdentity](../resources/security-submissionuseridentity.md)     | Specifies who submitted the email as a threat.|
| createdDateTime | DateTimeOffset             | Specifies when the threat submission was created.                                          |
| id              | String                     | Specifies the id of threat submission. |
| result          | [security.submissionResult](../resources/security-submissionresult.md)          | Specifies the result of the analysis performed by Microsoft.  |
| source          | submissionSource           | Specifies the role of the submitter. The possible values are: `administrator` and `user`.  |
| status          | longRunningOperationStatus | Indicates whether the threat submission has been analyzed by Microsoft. The possible values are: `notStarted`, `running`, `succeeded`, `failed` and `skipped`. |
| tenantId        | String                     | Indicates the tenant id of the submitter. Not required when created using a `POST` operation. It is extracted from the token of the post API call. |

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

