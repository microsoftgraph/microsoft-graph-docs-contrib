---
title: "Get fileThreatSubmission"
description: "Read the properties and relationships of a fileThreatSubmission object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get fileThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [fileThreatSubmission](../resources/security-filethreatsubmission.md) object.

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
GET /fileThreatSubmission
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fileThreatSubmission](../resources/security-filethreatsubmission.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_filethreatsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta/fileThreatSubmission
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.fileThreatSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

