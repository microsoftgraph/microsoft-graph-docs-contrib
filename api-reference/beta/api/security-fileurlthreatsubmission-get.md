---
title: "Get fileUrlThreatSubmission"
description: "Read the properties and relationships of a fileUrlThreatSubmission object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get fileUrlThreatSubmission
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) object.

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
GET /fileUrlThreatSubmission
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

If successful, this method returns a `200 OK` response code and a [fileUrlThreatSubmission](../resources/security-fileurlthreatsubmission.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_fileurlthreatsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta/fileUrlThreatSubmission
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.fileUrlThreatSubmission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.fileUrlThreatSubmission",
    "id": "1cc65780-c68a-aa92-5088-d0243929e35a",
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
}
```

