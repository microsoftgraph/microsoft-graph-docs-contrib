---
title: "virtualEvent: cancel"
description: "Cancel a virtual event."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# virtualEvent: cancel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a virtual event.

Currently the supported virtual event types are [virtualEventWebinar](../resources/virtualeventwebinar.md) and [virtualEventTownhall](../resources/virtualeventtownhall.md). A canceled virtual event has its **status** set to `canceled` permanently. You can still get a canceled virtual event by using the [Get virtualEvent](../api/virtualevent-get.md) API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-cancel-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/webinars/{id}/cancel
POST /solutions/virtualEvents/townhalls/{id}/cancel
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
  "name": "virtualevent.cancel",
  "sampleKeys": ["bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/bce9a3ca-a310-48fa-baf3-1cedcd04bb3f@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/cancel
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
