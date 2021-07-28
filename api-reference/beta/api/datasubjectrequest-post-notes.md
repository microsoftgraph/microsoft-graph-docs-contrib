---
title: "Create authoredNote"
description: "Create a new authoredNote object."
author: "skadam-msft"
localization_priority: Normal
ms.prod: "Privacy Management"
doc_type: apiPageType
---

# Create authoredNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new authoredNote object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DataSubject.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /compliance/dataSubjectRequests/{dataSubjectRequestId}/notes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authoredNote](../resources/authorednote.md) object.

The following table shows the properties that are required when you create the [authoredNote](../resources/authorednote.md).

|Property|Type|Description|
|:---|:---|:---|
|content|[microsoft.privacyManagement.itemBody](../resources/itembody.md)|The note content for the request|


## Response

If successful, this method returns a `201 Created` response code and an [authoredNote](../resources/authorednote.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authorednote_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}/notes
Content-Type: application/json
Content-length: 203

{
"content": 
  {
    "content": "Adding note from API.",
    "contentType": "text"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.privacyManagement.authoredNote"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#compliance/dataSubjectRequests('77f885ac-1d7b-4317-bde8-4cb3d24a3ed8')/notes/$entity",
    "id": "17f7fc36-74d8-402a-8ac1-90e4bc688310",
    "createdDateTime": "2021-07-28T21:38:20.5151187Z",
    "author": {
        "id": null,
        "displayName": "admin@contoso.onmicrosoft.com"
    },
    "content": {
        "content": "Adding note from API.",
        "contentType": "text"
    }
}
```

