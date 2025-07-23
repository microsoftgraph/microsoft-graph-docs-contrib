---
title: "subscription: getVapidPublicKey"
description: "Get the VAPID public key to be used for clients who use push notification server."
author: "takanapa"
ms.date: 07/21/2025
ms.localizationpriority: medium
ms.subservice: change-notifications
doc_type: apiPageType
---

# subscription: getVapidPublicKey

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the public key information required to validate push notifications according to [RFC 8292](https://www.rfc-editor.org/rfc/rfc8292.html) specifications.

## Permissions

Valid graph token is good enough to request this information. The same permissions you would be using to create the subscription can be used to get the VAPID public key.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /subscriptions/getVapidPublicKey
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "subscriptionthis.getvapidpublickey"
}
-->
``` http
GET https://graph.microsoft.com/beta/subscriptions/getVapidPublicKey
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.String"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": "String"
}
```

