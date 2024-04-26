---
title: "List presenters"
description: "Get the list of all virtualEventPresenter objects of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List presenters

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of all [virtualEventPresenter](../resources/virtualeventpresenter.md) objects associated with a virtual event.

Currently the supported virtual event type is [virtualEventTownhall](../resources/virtualeventtownhall.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-list-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-list-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
To list all presenters of a town hall:

``` http
GET /solutions/virtualEvents/townhalls/{townhallId}/presenters
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventPresenter](../resources/virtualeventpresenter.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventpresenter",
  "sampleKeys": ["88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33/presenters
```

### Response

The following example shows the response.
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
      "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
      "identity": {
        "displayName": "Diane Demoss",
        "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
      },
      "email": "DianeDemoss@contoso.com",
      "presenterDetails": null
    },
    {
      "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
      "identity": {
        "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
        "displayName": "Kenneth Brown",
        "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
      },
      "email": "KennethBrown@contoso.com",
      "presenterDetails": null
    }
  ]
}
```
