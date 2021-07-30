---
title: "List notes associated with the data subject request."
description: "Get the authoredNote resources from the notes navigation property."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: apiPageType
---

# List data subject request notes
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of authored notes assoicated with the data subject request. 

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
GET /compliance/dataSubjectRequests/{dataSubjectRequestId}/notes
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

If successful, this method returns a `200 OK` response code and a collection of [authoredNote](../resources/authorednote.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_authorednote"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}/notes
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authoredNote)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/dataSubjectRequests('77f885ac-1d7b-4317-bde8-4cb3d24a3ed8')/notes",
    "value": [
        {
            "id": "d5f1cac8-ffcd-48c2-9621-c457bb5324c5",
            "createdDateTime": "2021-03-09T23:29:01.059507Z",
            "author": {
                "id": null,
                "displayName": "admin@contoso.onmicrosoft.com"
            },
            "content": {
                "content": "Request created by API.",
                "contentType": "text"
            }
        },
        {
            "id": "d2fa5c11-a61f-4f70-b627-cba889a0cfdf",
            "createdDateTime": "2021-03-10T19:03:26.0417217Z",
            "author": {
                "id": null,
                "displayName": "admin@contoso.onmicrosoft.com"
            },
            "content": {
                "content": "final review",
                "contentType": "text"
            }
        },
        {
            "id": "8673da75-fed4-4ca6-8eb2-ae9cbb583fa5",
            "createdDateTime": "2021-04-22T05:51:15.3890269Z",
            "author": {
                "id": null,
                "displayName": "admin@contoso.onmicrosoft.com"
            },
            "content": {
                "content": "Adding note from API.",
                "contentType": "text"
            }
        }
    ]
}
```

