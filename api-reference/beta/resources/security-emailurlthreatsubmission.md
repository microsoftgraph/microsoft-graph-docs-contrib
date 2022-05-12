---
title: "emailUrlThreatSubmission resource type"
description: "**TODO: Add Description**"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailUrlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailUrlThreatSubmissions](../api/security-emailurlthreatsubmission-list.md)|[microsoft.graph.security.emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) collection|Get a list of the [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) objects and their properties.|
|[Get emailUrlThreatSubmission](../api/security-emailurlthreatsubmission-get.md)|[microsoft.graph.security.emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md)|Read the properties and relationships of an [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) object.|
|[Update emailUrlThreatSubmission](../api/security-emailurlthreatsubmission-update.md)|[microsoft.graph.security.emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md)|Update the properties of an [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) object.|
|[Delete emailUrlThreatSubmission](../api/security-emailurlthreatsubmission-delete.md)|None|Deletes an [emailUrlThreatSubmission](../resources/security-emailurlthreatsubmission.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|attackSimulationInfo|[microsoft.graph.security.attackSimulationInfo](../resources/security-attacksimulationinfo.md)|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|internetMessageId|String|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|messageUrl|String|**TODO: Add Description**|
|originalCategory|submissionCategory|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|receivedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|recipientEmailAddress|String|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|sender|String|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|senderIP|String|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|source|submissionSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `user`, `administrator`, `unknownFutureValue`.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|tenantAllowOrBlockListAction|[microsoft.graph.security.tenantAllowOrBlockListAction](../resources/security-tenantalloworblocklistaction.md)|**TODO: Add Description** Inherited from [emailThreatSubmission](../resources/security-emailthreatsubmission.md).|
|tenantId|String|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|

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

