---
title: "List presenters"
description: "Get the virtualEventPresenter resources from the presenters navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List presenters
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the virtualEventPresenter resources from the presenters navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-list-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-list-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/events/{virtualEventId}/presenters
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

If successful, this method returns a `200 OK` response code and a collection of [virtualEventPresenter](../resources/virtualeventpresenter.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventpresenter"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/events/{virtualEventId}/presenters
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventPresenter)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
  ]
}
```

