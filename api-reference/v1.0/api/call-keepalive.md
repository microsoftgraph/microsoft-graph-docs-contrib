---
title: "call: keepAlive"
description: "Make a request to this API every 15 to 45 minutes to ensure that an ongoing call stays alive."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# call: keepAlive

Make a request to this API every 15 to 45 minutes to ensure that an ongoing call stays alive. A call that does not receive this request within this time interval is considered inactive and will subsequently end.

A notification indicating that the call has ended will be sent. Due to network issues, the notification may not always be successfully sent out. After the call has ended, requests to this API will result in a `404 Error`. 

## Permissions
One of the following permissions may be required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
| :-------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not Supported        |
| Delegated (personal Microsoft account) | Not Supported        |
| Application     | None                                        |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/calls/{id}/keepAlive
```


## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
This method returns `200 OK` response code.

###### Request

<!-- {
  "blockType": "request",
  "name": "keep-alive"
}-->

```http
POST https://graph.microsoft.com/v1.0/communications/calls/2e1a0b00-2db4-4022-9570-243709c565ab/keepAlive
```

###### Response

<!-- {
  "blockType": "response",
  "name": "keep-alive",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 200 OK
```


<!--
{
  "type": "#page.annotation",
  "description": "call: keepAlive",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
