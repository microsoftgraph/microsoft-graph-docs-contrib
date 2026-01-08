---
title: "virtualEvent: setExternalEventInformation"
description: "Link external event information to a town hall or webinar event by setting an externalEventId."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# virtualEvent: setExternalEventInformation

Namespace: microsoft.graph

Link external event information to a [virtualEventTownhall](../resources/virtualeventtownhall.md) or [virtualEventWebinar](../resources/virtualeventwebinar.md) by setting an **externalEventId**.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualevent_setexternaleventinformation" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-setexternaleventinformation-permissions.md)]

## HTTP request

To link external town hall event information to a town hall event:

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/townhalls/{id}/setExternalEventInformation
```

To link external webinar event information to a webinar event:

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/virtualEvents/webinars/{id}/setExternalEventInformation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the **externalEventId** property of the [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) object.

You can specify the following property when you create the [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md).

|Property|Type|Description|
|:---|:---|:---|
| externalEventId | String | The identifier for a **virtualEventExternalInformation** object. Optional. If set, the maximum supported length is 256 characters. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Link external town hall event information to a town hall event

The following example shows how to link external town hall event information to a town hall event by setting an **externalEventId**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventtownhall.setexternaleventinformation",
  "sampleKeys": ["a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/setExternalEventInformation
Content-Type: application/json

{
  "externalEventId": "myExternalEventId"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventtownhallsetexternaleventinformation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Link external webinar event information to a webinar event

The following example shows how to link external webinar event information to a webinar event by setting an **externalEventId**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventwebinar.setexternaleventinformation",
  "sampleKeys": ["a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/setExternalEventInformation
Content-Type: application/json

{
  "externalEventId": "myExternalEventId"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualeventwebinarsetexternaleventinformation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
