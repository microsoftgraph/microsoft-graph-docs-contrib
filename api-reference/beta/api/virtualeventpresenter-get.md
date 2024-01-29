---
title: "Get presenter"
description: "Read the properties and relationships of a virtualEventPresenter object."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get presenter
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-get-presenter-permissions"
}
-->
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|VirtualEvent.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/events/{virtualEventId}/presenters/{presenterId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventpresenter"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/events/{virtualEventId}/presenters/{presenterId}
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventPresenter",
    "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
    "identity": {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    },
    "email": "String",
    "presenterDetails": {
      "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
    },
    "profilePhoto": "Stream"
  }
}
```
