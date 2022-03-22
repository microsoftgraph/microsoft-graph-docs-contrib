---
title: "threatSubmission resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# threatSubmission resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List threatSubmissions](../api/security-threatsubmission-list.md)|[microsoft.graph.security.threatSubmission](../resources/security-threatsubmission.md) collection|Get a list of the [threatSubmission](../resources/security-threatsubmission.md) objects and their properties.|
|[Get threatSubmission](../api/security-threatsubmission-get.md)|[microsoft.graph.security.threatSubmission](../resources/security-threatsubmission.md)|Read the properties and relationships of a [threatSubmission](../resources/security-threatsubmission.md) object.|
|[Update threatSubmission](../api/security-threatsubmission-update.md)|[microsoft.graph.security.threatSubmission](../resources/security-threatsubmission.md)|Update the properties of a [threatSubmission](../resources/security-threatsubmission.md) object.|
|[Delete threatSubmission](../api/security-threatsubmission-delete.md)|None|Deletes a [threatSubmission](../resources/security-threatsubmission.md) object.|
|[review](../api/security-threatsubmission-review.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description**|
|category|submissionCategory|**TODO: Add Description**.The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`.|
|clientSource|submissionClientSource|**TODO: Add Description**.The possible values are: `microsoft`, `other`, `unknownFutureValue`.|
|contentType|submissionContentType|**TODO: Add Description**.The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description**|
|source|submissionSource|**TODO: Add Description**.The possible values are: `user`, `administrator`, `unknownFutureValue`.|
|status|longRunningOperationStatus|**TODO: Add Description**.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description**|

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

