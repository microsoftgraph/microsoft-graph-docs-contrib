---
title: "emailThreatSubmission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# emailThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [threatSubmission](../resources/security-threatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailThreatSubmissions](../api/security-threatsubmissionroot-list-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md) collection|Get a list of the [emailThreatSubmission](../resources/security-emailthreatsubmission.md) objects and their properties.|
|[Create emailThreatSubmission](../api/security-emailthreatsubmission-post-emailthreats.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Create a new [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[Get emailThreatSubmission](../api/security-emailthreatsubmission-get.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Read the properties and relationships of an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[Update emailThreatSubmission](../api/security-emailthreatsubmission-update.md)|[microsoft.graph.security.emailThreatSubmission](../resources/security-emailthreatsubmission.md)|Update the properties of an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[Delete emailThreatSubmission](../api/security-threatsubmissionroot-delete-emailthreats.md)|None|Deletes an [emailThreatSubmission](../resources/security-emailthreatsubmission.md) object.|
|[review](../api/security-emailthreatsubmission-review.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|attackSimulationInfo|[microsoft.graph.security.attackSimulationInfo](../resources/security-attacksimulationinfo.md)|**TODO: Add Description**|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|internetMessageId|String|**TODO: Add Description**|
|originalCategory|submissionCategory|**TODO: Add Description**.The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|receivedDateTime|DateTimeOffset|**TODO: Add Description**|
|recipientEmailAddress|String|**TODO: Add Description**|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|sender|String|**TODO: Add Description**|
|senderIP|String|**TODO: Add Description**|
|source|submissionSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `user`, `administrator`, `unknownFutureValue`.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description**|
|tenantAllowOrBlockListAction|[microsoft.graph.security.tenantAllowOrBlockListAction](../resources/security-tenantalloworblocklistaction.md)|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|

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

