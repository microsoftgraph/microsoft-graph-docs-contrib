---
title: "Create virtualEventPresenter"
description: "Create a new virtualEventPresenter object to a virtual event."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Create virtualEventPresenter

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventPresenter](../resources/virtualeventpresenter.md) object on a virtual event. 

Currently the supported virtual event type is [virtualEventTownhall](../resources/virtualeventtownhall.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-post-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-post-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/townhalls/{townhallId}/presenters
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

You can specify the following properties when you create a presenter on a **virtualEventTownhall**:

|Property|Type|Description|
|:---|:---|:---|
| identity | [communicationsUserIdentity](../resources/communicationsuseridentity.md) or [communicationsGuestIdentity](../resources/communicationsguestidentity.md)  | Identity information of the presenter.|

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Example 1: Create an in-tenant presenter

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualeventpresenter_internal_",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters
Content-Type: application/json

{
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsUserIdentity",
    "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
  },
}
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
  "email": "kenneth.brown@contoso.com",
  "identity": {
      "@odata.type": "#microsoft.graph.communicationsUserIdentity",
      "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
      "displayName": "Kennth Brown",
      "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
  },
  "presenterDetails": null
}
```


### Example 2: Create an external presenter

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_virtualeventpresenter_external",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters
Content-Type: application/json

{
  "identity": {
    "@odata.type": "#microsoft.graph.communicationsGuestIdentity",
    "displayName": "Guest Speaker",
    "email": "guest.speaker@microsoft.com"
  }
}
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "184975c0-4096-4a02-b251-c48546691c42",
  "email": "guest.speaker@microsoft.com,
  "presenterDetails": null,
  "identity": {
      "@odata.type": "#microsoft.graph.communicationsGuestIdentity",
      "id": "184975c0-4096-4a02-b251-c48546691c42",
      "displayName": "Guest Speaker",
      "email": "guest.speaker@microsoft.com"
  }
}
```
