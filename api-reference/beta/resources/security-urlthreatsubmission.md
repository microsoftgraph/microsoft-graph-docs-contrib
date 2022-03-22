---
title: "urlThreatSubmission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# urlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [threatSubmission](../resources/security-threatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List urlThreatSubmissions](../api/security-urlthreatsubmission-list.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md) collection|Get a list of the [urlThreatSubmission](../resources/security-urlthreatsubmission.md) objects and their properties.|
|[Get urlThreatSubmission](../api/security-urlthreatsubmission-get.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md)|Read the properties and relationships of an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.|
|[Update urlThreatSubmission](../api/security-urlthreatsubmission-update.md)|[microsoft.graph.security.urlThreatSubmission](../resources/security-urlthreatsubmission.md)|Update the properties of an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.|
|[Delete urlThreatSubmission](../api/security-urlthreatsubmission-delete.md)|None|Deletes an [urlThreatSubmission](../resources/security-urlthreatsubmission.md) object.|
|[review](../api/security-urlthreatsubmission-review.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|source|submissionSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `user`, `administrator`, `unknownFutureValue`.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|webUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.urlThreatSubmission",
  "baseType": "microsoft.graph.security.threatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.urlThreatSubmission",
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
  "webUrl": "String"
}
```

