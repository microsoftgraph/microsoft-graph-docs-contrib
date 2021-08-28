---
title: "dataSubjectRequest: getFinalAttachment"
description: "Get the final attachment for a data subject request."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: apiPageType
---

# dataSubjectRequest: getFinalAttachment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the final attachment for a data subject request. The attachment is a zip file that contains all the files that were included by the privacy administrator.

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
GET /compliance/dataSubjectRequests/{dataSubjectRequestId}/getFinalAttachment
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function will redirect to the Microsoft Azure blob Storage link with the SAS token and return a `302` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "datasubjectrequest_getfinalattachment"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}/getFinalAttachment
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 302 
```

