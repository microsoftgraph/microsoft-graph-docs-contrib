---
title: "virtualEventWebinar: cancel"
description: "Cancel a virtual event webinar."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# virtualEventWebinar: cancel
Namespace: microsoft.graph

Cancel a [virtualEventWebinar](../resources/virtualeventwebinar.md). A canceled webinar has its **status** set to `canceled` permanently. You can still get a canceled webinar by using the [Get virtualEventWebinar](../api/virtualeventwebinar-get.md) API.

Only the **Organizer** can cancel a webinar.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventwebinar_cancel" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-cancel-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/cancel
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
```http
HTTP/1.1 204 No Content
```
