---
title: "Create authoredNote"
description: "Create a new authoredNote object."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Create authoredNote
Namespace: microsoft.graph

Create a new [authoredNote](../resources/authorednote.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SubjectRightsRequest.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
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
|content|[microsoft.graph.itemBody](../resources/itembody.md)|The note content for the request|


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
POST https://graph.microsoft.com/v1.0/privacy/subjectRightsRequests/{subjectRightsRequestId}/notes
Content-Type: application/json
Content-length: 203

{
"content": 
  {
    "content": "String",
    "contentType": "text"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authoredNote"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "id": "String (identifier)",
    "createdDateTime": "String (timestamp)",
    "author": { "@odata.type": "microsoft.graph.identitySet"},
    "content": {
          "@odata.type": "microsoft.graph.itemBody"
    }

}
```

