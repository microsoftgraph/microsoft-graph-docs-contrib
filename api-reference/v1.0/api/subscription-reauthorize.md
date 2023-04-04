---
title: "subscription: reauthorize"
description: "Reauthorize a subscription when you receive a reauthorizationRequired challenge."
author: "jumasure"
ms.localizationpriority: medium
ms.prod: "change-notifications"
doc_type: apiPageType
---

# subscription: reauthorize
Namespace: microsoft.graph

Reauthorize a subscription when you receive a **reauthorizationRequired** challenge.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /subscriptions/{subscriptionsId}/reauthorize
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
  "name": "subscriptionthis.reauthorize"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/subscriptions/fddf9ac7-44ee-480d-b304-6cc4057b7f5a/reauthorize
```


### Response
The following is an example of the response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

