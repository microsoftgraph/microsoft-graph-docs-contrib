---
title: "emailThreatSubmission resource type"
description: "Reports suspected spam, malware or phishing emails to Microsoft Defender for Office 365."
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type to report suspected spam, malware or phishing emails to Microsoft Defender for Office 365. You can also submit false positive cases, that should not have been blocked by Microsoft Defender for Office 365, for example, emails incorrectly categorized as junk or spam.

Inherits from [threatSubmission](../resources/security-threatsubmission.md). Base type of [emailContentThreatSubmission](../resources/security-emailcontentthreatsubmission.md) and [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissions](../api/security-emailthreatsubmission-list.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md) collection|Get a list of the [emailThreatSubmission](../resources/security-emailthreatsubmission.md) objects and their properties.|
|[Create emailThreatSubmission](../api/security-emailthreatsubmission-post-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Create a new [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[Get emailThreatSubmission](../api/security-emailthreatsubmission-get.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Read the properties and relationships of an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[review](../api/security-emailthreatsubmission-review.md)|None|Review threat submission from end user by administrator.|

## Properties
| Property     | Type    | Description    |
|:-----------------------------|:-----------------------------|:-------------------------------------------------------------------------------------------------------|
| attackSimulationInfo         | [security.attackSimulationInfo](../resources/security-attacksimulationinfo.md) | If the email is phishing simulation, this field will not be null.|
| internetMessageId            | String                       | Specifies the internet message id of the email being submitted. This information is present in the email header. |
| originalCategory             | submissionCategory           | The original category of the submission. The possible values are: `notJunk`, `spam`, `phishing`, `malware` and `unkownFutureValue`. |
| receivedDateTime             | DateTimeOffset               | Specifies the date and time stamp when the email was received.  | 
| recipientEmailAddress        | String                       | Specifies the email address (in smtp format) of the recipient who received the email. |
| sender                       | String                       | Specifies the email address of the sender. | 
| senderIP                     | String                       | Specifies the IP address of the sender. |
| subject                      | String                       | Specifies the subject of the email . |
| tenantAllowOrBlockListAction | [security.tenantAllowOrBlockListAction](../resources/security-tenantalloworblocklistaction.md) | It is used to automatically add allows for the components such as URL, file, sender; which are deemed bad by Microsoft so that similar messages in the future can be allowed. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.emailThreatSubmission",
  "baseType": "microsoft.graph.security.threatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.emailThreatSubmission",
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
  "clientSource": "String",
  "recipientEmailAddress": "String",
  "internetMessageId": "String",
  "subject": "String",
  "sender": "String",
  "senderIP": "String",
  "receivedDateTime": "String (timestamp)",
  "originalCategory": "String",
  "attackSimulationInfo": {
    "@odata.type": "microsoft.graph.security.attackSimulationInfo"
  },
  "tenantAllowOrBlockListAction": {
    "@odata.type": "microsoft.graph.security.tenantAllowOrBlockListAction"
  }
}
```

