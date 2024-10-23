---
title: "virtualEventWebinar: set external event information"
description: Link external webinar event information to a webinar event
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# virtualEventWebinar: set external event information
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Link external webinar event information to a webinar event through setting an externalEventId.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualevent-setexternaleventinformation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualevent-setexternaleventinformation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/webinars/{id}/setExternalEventInformation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the external event id property of the [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) object.

You can specify the following property when you create the [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md).

|Property|Type|Description|
|:---|:---|:---|
| externalEventId | String | The identifier for a virtualEventExternalInformation object. Optional. If set, the maximum supported length is 256 characters. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualeventwebinar.setexternaleventinformation",
  "sampleKeys": ["a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/a57082a9-7629-4f74-8da0-8d621aab4d2d@4aa05bcc-1cac-4a83-a9ae-0db84b88f4ba/setExternalEventInformation
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
