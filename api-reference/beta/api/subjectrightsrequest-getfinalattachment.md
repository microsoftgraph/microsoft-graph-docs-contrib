---
title: "subjectRightsRequest: getFinalAttachment"
description: "Get the final attachment for a subject rights request."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# subjectRightsRequest: getFinalAttachment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the final attachment for a subject rights request. The attachment is a zip file that contains all the files that were included by the privacy administrator.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SubjectRightsRequest.Read.All*, SubjectRightsRequest.ReadWrite.All*|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

>[!IMPORTANT]
>Permissions marked with an asterisk (*) are currently not available. For details, see [Known issues](/graph/known-issues#compliance).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /privacy/subjectRightsRequests/{subjectRightsRequestId}/getFinalAttachment
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function will redirect to the Microsoft Azure blob storage link with the SAS token and return a `302` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "subjectRightsRequest_getfinalattachment"
}
-->
``` http
GET https://graph.microsoft.com/beta/privacy/subjectRightsRequests/{subjectRightsRequestId}/getFinalAttachment
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

