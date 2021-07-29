---
title: "dataSubjectRequest: getFinalReport"
description: "Get the final report for the request. The report is a text file that contains information about the files that where included by the privacy administrator."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: apiPageType
---

# dataSubjectRequest: getFinalReport
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the final report for the request. The report is a text file that contains information about the files that where included by the privacy administrator.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DataSubject.Read.All, DataSubject.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/dataSubjectRequests/{dataSubjectRequestId}/getFinalReport
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a Stream in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "datasubjectrequest_getfinalreport"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}/getFinalReport
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

Id, Workload, Size, ImmutableId, FileName, FilePath, ItemUrl
someId, Exchange, 200, Id, somefile.txt, filePath, Url
```

