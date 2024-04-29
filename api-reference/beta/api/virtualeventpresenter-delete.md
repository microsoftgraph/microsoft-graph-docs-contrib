---
title: "Delete virtualEventPresenter"
description: "Delete a virtualEventPresenter object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Delete virtualEventPresenter

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [virtualEventPresenter](../resources/virtualeventpresenter.md) from a virtual event.

Currently the supported virtual event type is [virtualEventTownhall](../resources/virtualeventtownhall.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventpresenter-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/virtualEvents/townhalls/{townhallId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_presenters_from_virtualeventtownhall",
  "sampleKeys": ["502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742", "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters/7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
