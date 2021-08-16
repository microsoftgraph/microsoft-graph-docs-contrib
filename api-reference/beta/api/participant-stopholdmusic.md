---
title: "participant: stopHoldMusic"
description: "Allows the application to stop a participant from being on hold."
author: "mkhribech"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# participant: stopHoldMusic

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows the application to stop a participant from being on hold as a result of calling `startHoldMusic`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not Supported.                               |
| Delegated (personal Microsoft account) | Not Supported.                               |
| Application                            | For joining meetings: Calls.JoinGroupCallsasGuest.All or Calls.JoinGroupCalls.All<br/>For initiating peer-to-peer calls: Calls.Initiate.All<br/>For initiating group calls: Calls.InitiateGroupCalls.All<br/>Additionally, if any of the previous calls is an app-hosted media call: Calls.AccessMedia. |

> **Note:** The permission check happens when the application joins or tries to start the call. No additional permission check is performed when `stopHoldMusic` is called.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/participants/{id}/stopHoldMusic
POST /communications/calls/{id}/participants/{id}/stopHoldMusic
```
> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|clientContext|String|Unique client context string. Can have a maximum of 256 characters.|

## Response
If successful, this method returns a `202 Accepted` response code and a [stopHoldMusicOperation](../resources/stopHoldmusicoperation.md) object in the response body.

## Example
The following example shows how to call this API.

##### Request
The following example shows the request.


# [HTTP](#tab/http)
<!-- { 
  "blockType": "request", 
  "name": "participant-stopHoldMusic" 
}-->
```http
POST https://graph.microsoft.com/beta/communications/calls/e141b67c-90fd-455d-858b-b48a40b9cc8d/participants/fa1e9582-7145-4ca3-bcd8-577f561fcb6e/microsoft.graph.stopHoldMusic
Content-type: application/json

{
  "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c",
}
```

---


##### Response

> **Note:** The response object shown here might be shortened for readability. 
 
<!-- { 
  "blockType": "response", 
  "truncated": true, 
  "@odata.type": "microsoft.graph.stopHoldMusicOperation" 
} --> 
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/communications/calls/e141b67c-90fd-455d-858b-b48a40b9cc8d/operations/0fe0623f-d628-42ed-b4bd-8ac290072cc5

{
  "@odata.type": "#microsoft.graph.stopHoldMusicOperation",
  "id": "0fe0623f-d628-42ed-b4bd-8ac290072cc5",
  "status": "running",
  "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c"
}
```

##### Notification - operation completed

```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "communications/calls/e141b67c-90fd-455d-858b-b48a40b9cc8d/operations/0fe0623f-d628-42ed-b4bd-8ac290072cc5",
      "resourceData": {
        "@odata.type": "#microsoft.graph.stopHoldMusicOperation",
        "@odata.id": "communications/calls/e141b67c-90fd-455d-858b-b48a40b9cc8d/operations/0fe0623f-d628-42ed-b4bd-8ac290072cc5",
        "@odata.etag": "W/\"54451\"",
        "clientContext": "d45324c1-fcb5-430a-902c-f20af696537c",
        "status": "completed"
      }
    }
  ]
}
```