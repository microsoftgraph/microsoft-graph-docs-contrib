---
title: "virtualEventWebinar: cancel"
description: "Cancel a virtual event webinar."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# virtualEventWebinar: cancel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a [virtualEventWebinar](../resources/virtualeventwebinar.md). A canceled webinar has its **status** set to `canceled` permanently. You can still get a canceled webinar by using the [Get virtualEventWebinar](../api/virtualeventwebinar-get.md) API.

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
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventwebinar.cancel",
  "sampleKeys": ["a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/cancel
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventwebinarcancel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
