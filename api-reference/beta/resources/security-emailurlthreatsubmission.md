---
title: "emailUrlThreatSubmission resource type"
description: "Represents email url threat submission which is submitted by email url"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailUrlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents email url threat submission object which is created when submission is made using email URL.


Inherits from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).

## Properties
| Property   | Type   | Description                            |
|:-----------|:-------|:---------------------------------------|
| messageUrl | String | It specifies the url of the graph message which is to be submitted. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.emailUrlThreatSubmission",
  "baseType": "microsoft.graph.security.emailThreatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.emailUrlThreatSubmission",
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
  },
  "messageUrl": "String"
}
```

