---
title: "List fileContentThreatSubmissions"
description: "Get a list of the fileContentThreatSubmission objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List fileContentThreatSubmissions
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [fileContentThreatSubmission](../resources/security-filecontentthreatsubmission.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.security.fileContentThreatSubmission not found
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

If successful, this method returns a `200 OK` response code and a collection of [fileContentThreatSubmission](../resources/filecontentthreatsubmission.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_filecontentthreatsubmission"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.security.fileContentThreatSubmission not found
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.fileContentThreatSubmission)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.fileContentThreatSubmission",
      "id": "2321e809-0bfc-4b88-014b-e1c33400055f",
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
  ]
}
```

