---
title: "Update fileThreatSubmission"
description: "Update the properties of a fileThreatSubmission object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update fileThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [fileThreatSubmission](../resources/security-filethreatsubmission.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /fileThreatSubmission
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). Optional.|
|contentType|submissionContentType|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `email`, `url`, `file`, `app`, `unknownFutureValue`. Optional.|
|category|submissionCategory|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `unknownFutureValue`. Required.|
|source|submissionSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `user`, `administrator`, `unknownFutureValue`. Optional.|
|createdBy|[microsoft.graph.security.submissionUserIdentity](../resources/security-submissionuseridentity.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). Optional.|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`. Optional.|
|result|[microsoft.graph.security.submissionResult](../resources/security-submissionresult.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). Optional.|
|adminReview|[microsoft.graph.security.submissionAdminReview](../resources/security-submissionadminreview.md)|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). Optional.|
|clientSource|submissionClientSource|**TODO: Add Description** Inherited from [threatSubmission](../resources/security-threatsubmission.md). The possible values are: `microsoft`, `other`, `unknownFutureValue`. Optional.|
|fileName|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [fileThreatSubmission](../resources/security-filethreatsubmission.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_filethreatsubmission"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/fileThreatSubmission
Content-Type: application/json
Content-length: 523

{
  "@odata.type": "#microsoft.graph.security.fileThreatSubmission",
  "tenantId": "String",
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
  "fileName": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.fileThreatSubmission",
  "id": "7113d48a-8acc-ac7d-8735-2629157f3b57",
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
  "fileName": "String"
}
```

