---
title: "threatSubmission resource type"
description: "Represent threat submission which is used to submit suspected email, url, file threats to Microsoft 365 Defender."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# threatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type for threat submission. 

It is used to submit suspected spam emails, malware emails, phish emails, malware urls, phish urls, phish email attachments and malware email attachments to Microsoft 365 Defender for Office (MDO), as well as to submit suspicious files to M365 Defender for Endpoint (MDE).

It could also be used to submit false positive cases which should not have been blocked by MDO, e.g, not junk emails, safe urls and safe email attachments.

Inherits from [entity](../resources/entity.md). Base type of [emailThreatSubmission](../resources/security-emailthreatsubmission.md), [urlThreatSubmission](../resources/security-urlthreatsubmission.md), [fileThreatSubmissin](../resources/security-filethreatsubmission.md).

## Properties
| Property        | Type                       | Description                                                                      |
|:----------------|:---------------------------|:---------------------------------------------------------------------------------|
| adminReview     | [security.submissionAdminReview](../resources/security-submissionadminreview.md)| Represents an administrative review of an threat submitted by a user. |
| category        | submissionCategory         | It is used to specify what we are submitting as to Microsoft. The possible values are: `notJunk`, `spam`, `phishing` and `malware`.|
| clientSource    | submissionClientSource     | It is used to specify what the source for this submission is. The possible values are: `microsoft` and `other`. |
| contentType     | submissionContentType      | It is used to specify the type of content which is being submitted. The possible values are: `email`, `url`, `file` and `app`.  |
| createdBy       | [security.submissionUserIdentity](../resources/security-submissionuseridentity.md)     | It is use to specify who submitted the email as a threat.|
| createdDateTime | DateTimeOffset             | It is used to specify when the threat submission was created.                                          |
| id              | String                     | It specifies the id of Threat submission. |
| result          | [security.submissionResult](../resources/security-submissionresult.md)          | It is used to specify the result of the analysis which Microsoft had done.  |
| source          | submissionSource           | It is used to specify who is doing the threat submission? Is it a user or an administrator. The possible values are: `administrator` and `user`.  |
| status          | longRunningOperationStatus | It denotes whether the threat submission has been analyzed by Microsoft or not. The possible values are: `notStarted`, `running`, `succeeded`, `failed` and `skipped`. |
| tenantId        | String                     | It denotes the the tenant id from which submission was done. When creation using post method, it is not required. It is extracted from the token of the post API call. |

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

