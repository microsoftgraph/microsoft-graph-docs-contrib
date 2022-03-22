---
title: "fileUrlThreatSubmission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileUrlThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [fileThreatSubmission](../resources/security-filethreatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileUrlThreatSubmissions](../api/security-fileurlthreatsubmission-list.md)|[microsoft.graph.security.fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) collection|Get a list of the [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) objects and their properties.|
|[Get fileUrlThreatSubmission](../api/security-fileurlthreatsubmission-get.md)|[microsoft.graph.security.fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md)|Read the properties and relationships of a [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) object.|
|[Update fileUrlThreatSubmission](../api/security-fileurlthreatsubmission-update.md)|[microsoft.graph.security.fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md)|Update the properties of a [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) object.|
|[Delete fileUrlThreatSubmission](../api/security-fileurlthreatsubmission-delete.md)|None|Deletes a [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|fileName|String|**TODO: Add Description** Inherited from [fileThreatSubmission](../resources/security-filethreatsubmission.md).|
|fileUrl|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|source|submissionSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `user`, `administrator`, `unknownFutureValue`.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.fileUrlThreatSubmission",
  "baseType": "microsoft.graph.security.fileThreatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileUrlThreatSubmission",
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
  "fileName": "String",
  "fileUrl": "String"
}
```

