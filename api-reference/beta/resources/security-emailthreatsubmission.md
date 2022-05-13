---
title: "emailThreatSubmission resource type"
description: "email threat submission"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type for email threat submission.


Inherits from [threatSubmission](../resources/security-threatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissions](../api/security-emailthreatsubmission-list.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md) collection|Get a list of the [emailThreatSubmission](../resources/security-emailthreatsubmission.md) objects and their properties.|
|[Create emailThreatSubmission](../api/security-emailthreatsubmission-post-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Create a new [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[Get emailThreatSubmission](../api/security-emailthreatsubmission-get.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Read the properties and relationships of an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[review](../api/security-emailthreatsubmission-review.md)|None|Review threat submission from end user by administrator.|

## Properties
#### Properties

| Property                     | Type                         | Description                                                                                            | Key | Required |
|:-----------------------------|:-----------------------------|:-------------------------------------------------------------------------------------------------------|:----|:---------|
| recipientEmailAddress        | String                       | The email recipient smtp address string.                                                               | ❌   | ✔        |
| internetMessageId            | String                       | The internet message id of the submitted email.                                                        | ❌   | ❌        |
| subject                      | String                       | The subject of the submitted email.                                                                    | ❌   | ❌        |
| sender                       | String                       | The sender of the submitted email.                                                                     | ❌   | ❌        |
| senderIP                     | String                       | The sender IP of the submitted email.                                                                  | ❌   | ❌        |
| receivedDateTime             | DateTimeOffset               | The received date time of the submitted email.                                                         | ❌   | ❌        |
| originalCategory             | submissionCategory           | notJunk, spam, phishing, malware.                                                                      | ❌   | ❌        |
| attackSimulationInfo         | [attackSimulationInfo](../resources/security-attacksimulationinfo.md)         | If the email is phishing simulation, the field will not be null.                                       | ❌   | ❌        |
| tenantAllowOrBlockListAction | [tenantAllowOrBlockListAction](../resources/security-tenantalloworblocklistaction.md) | Used to auto add urls/attachments/senders of the email threat submission into tenant allow block list. | ❌   | ❌        |
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

