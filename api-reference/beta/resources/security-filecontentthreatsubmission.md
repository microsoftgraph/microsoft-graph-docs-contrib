---
title: "fileContentThreatSubmission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileContentThreatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [fileThreatSubmission](../resources/security-filethreatsubmission.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileContentThreatSubmissions](../api/security-filecontentthreatsubmission-list.md)|[microsoft.graph.security.fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) collection|Get a list of the [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) objects and their properties.|
|[Get fileContentThreatSubmission](../api/security-filecontentthreatsubmission-get.md)|[microsoft.graph.security.fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md)|Read the properties and relationships of a [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) object.|
|[Update fileContentThreatSubmission](../api/security-filecontentthreatsubmission-update.md)|[microsoft.graph.security.fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md)|Update the properties of a [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) object.|
|[Delete fileContentThreatSubmission](../api/security-filecontentthreatsubmission-delete.md)|None|Deletes a [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md).|
|fileContent|String|**TODO: Add Description**|
|fileName|String|**TODO: Add Description** Inherited from [fileThreatSubmission](../resources/security-filethreatsubmission.md).|
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
  "@odata.type": "microsoft.graph.security.fileContentThreatSubmission",
  "baseType": "microsoft.graph.security.fileThreatSubmission",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileContentThreatSubmission",
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
  "fileContent": "String"
}
```

