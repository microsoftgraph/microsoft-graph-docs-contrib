---
title: "List notes"
description: "Get the authoredNote resources from the notes navigation property."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# List notes
Namespace: microsoft.graph

Get the list of authored notes assoicated with a subject rights request. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SubjectRightsRequest.Read.All*, SubjectRightsRequest.ReadWrite.All*|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

>[!IMPORTANT]
>Permissions marked with an * are currently not available. For details, see see [known issues](/graph/known-issues#compliance).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
```

## Optional query parameters
This method does not support the [OData query parameters](/graph/query-parameters) to help customize the response.

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
GET https://graph.microsoft.com/v1.0/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
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
    "@odata.context": "https://graph.microsoft.com/beta/privacy/subjectRightsRequests('77f885ac-1d7b-4317-bde8-4cb3d24a3ed8')/notes",
    "value": [
        {
            "id": "String (identifier)",
            "createdDateTime": "String (timestamp)",
            "author": { "@odata.type": "microsoft.graph.identitySet"},
            "content": {
                 "@odata.type": "microsoft.graph.itemBody"
            }
        }
    ]
}
```

