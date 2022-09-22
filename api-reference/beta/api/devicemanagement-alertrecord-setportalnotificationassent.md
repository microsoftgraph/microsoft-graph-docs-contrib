---
title: "alertRecord: setPortalNotificationAsSent"
description: "Set a single portal notification status to published."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# alertRecord: setPortalNotificationAsSent

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a single portal notification status to published by modifying the **isPortalNotificationSent** property to `true` for the user specified in the request.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/monitoring/alertRecords/{alertRecordId}/setPortalNotificationAsSent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "alertrecordthis.setportalnotificationassent"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRecords/6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e/setPortalNotificationAsSent
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
