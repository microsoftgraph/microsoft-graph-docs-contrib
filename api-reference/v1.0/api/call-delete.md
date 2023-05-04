---
title: "Delete call"
description: "Delete or hang up an active call."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Delete call

Namespace: microsoft.graph

Delete or hang up an active call. For group calls, this will only delete your call leg and the underlying group call will still continue.

## Permissions

| Permission type | Permissions (from least to most privileged)                  |
| :-------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | Not Supported.                         |
| Delegated (personal Microsoft account) | Not Supported.                         |
| Application                            | Calls.Initiate.All, Calls.AccessMedia.All |

> **Note:** Permissions are checked when the call is created; no additional permission check is made when calling this API. Calls.AccessMedia.All is only necessary for calls that use app-hosted media.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /communications/calls/{id}
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request
The following example shows the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete-call-1"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-call-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-call-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-call-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-call-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-call-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-call-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

### Notification - terminating

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
      "changeType": "updated",
      "resourceUrl": "/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "state": "terminating"
      }
    }
  ]
}
  
```

### Notification - terminated

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
      "resourceUrl": "/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "state": "terminated",
        "resultInfo": {
          "@odata.type": "#microsoft.graph.resultInfo",
          "code": "200",
          "subcode": "5001",
          "message": "The conversation has ended."
        }
      }
    }
  ]
}
```

#### Call end reason codes

These are some of the common error codes received via notification when call is terminated.

| Code | Sub-code | Termination reason                                                                                 |
| :--- | :------  | :------------------------------------------------------------------------------------------------  |
| 200  | 4097     | Call ended by the other participant in the call.                                                   |
| 200  | 4521     | Call ended by the other participant in peer-to-peer call.                                          |
| 200  | 5000     | Removed from the conversation by another participant.                                              |
| 200  | 5001     | The conversation has ended.                                                                        |
| 200  | 5002     | The conversation has ended as all other participants have left the call.                           |
| 200  | 5003     | The conversation has ended.                                                                        |
| 200  | 5007     | The conversation has ended as the initiator of the group call left the conversation.               |
| 200  | 5010     | The conversation has ended as only one participant remained in the conversation.                   |
| 200  | 5012     | The conversation has ended as there are no participants in the incoming roster.                    |
| 200  | 5013     | The conversation has ended as no one else has joined the group call.                               |
| 200  | 5014     | The conversation has ended because we were unable to determine a potential host for the group call. |
| 200  | 5020     | The conversation has ended as there are no non-hidden participants in the incoming roster.         |
| 200  | 5030     | The conversation has ended as the breakout room duration has elapsed.                              |
| 200  | 5300     | Participant was removed from the conversation by another participant.                              |
| 200  | 5855     | Participant waiting in lobby was removed from the conversation after lobby inactivity timeout.     |
| 200  | 7000     | The conversation has ended by bot.                                                                 |
| 200  | 7015     | Call ended as the transfer completed successfully.                                                 |
| 200  | 10550    | The conversation has ended by bot.                                                                 |
| 200  | 18503    | The other participant in the peer-to-peer call left the conversation.                              |
| 200  | 540000/560000   | Call ended by the PSTN User.                                                                |
| 408  | 8537     | Keep Alive timeout, cleaned up inactive call.                                                      |
| 408  | 1106     | An acknowledgement was not received for the call acceptance in the allotted time.                  |
| 408  | 10057    | Call timed out due to no signaling from callee endpoints.                                          |
| 410  | 301005   | Media connectivity failure.                                                                        |
| 480  | 10037    | No callee endpoints were found.                                                                    |
| 480  | 10076    | Callee could not be reached.                                                                       |
| 480  | 10134    | Call rejected due to inability to route the call.                                                  |
| 480  | 10199    | Call rejected as private calling is disabled for the user.                                         |
| 500  | 1005     | Server encountered connectivity error with Bot's media. Please check media connectivity between Bot and Microsoft. |


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete call",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

