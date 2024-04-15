---
title: "Get trustFrameworkKey_v2"
description: "Read the properties and relationships of a trustFrameworkKey_v2 object."
author: "gysingh"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get trustFrameworkKey_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "trustframeworkkey_v2-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/trustframeworkkey_v2-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /trustFramework/keySets/{trustFrameworkKeySetId}/keys_v2/{trustFrameworkKey_v2Id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [trustFrameworkKey_v2](../resources/trustframeworkkey_v2.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_trustframeworkkey_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/trustFramework/keySets/{trustFrameworkKeySetId}/keys_v2/{trustFrameworkKey_v2Id}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.trustFrameworkKey_v2"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.trustFrameworkKey_v2",
    "k": "AQHF",
    "x5c": [
      ""MIICDTCCAXagAwIBAgIQAkiG9w0zWT5PduVXKynAjHTATBgNVHSUEDDAKBggrBgEFBQcDATANBgkqhkiG9w0BAQUFAAOBgQAhrtp6oz5QYwRMFGfHqvb0HzDIyYQ5ryxYFpQaUW4+0vzMP4NRdN7WM89BeEh73YdAlOTif9T6i/KXK5G3qyUKnvO884rIYHsjvA3sS+zESU1lcyvFpD4a602xeobYqm6yHHJWRJr2yzIICkVW6QX8a3W3KteMUZY0vm0o5IU/uw==""
    ],
    "x5t": "kr03PNLOFr9InfdsfbIyoC4KCKS8",
    "kty": "oct",
    "use": "sig",
    "status": "enabled",
    "exp": "1712952360",
    "nbf": "1712952300",
    "kid": "aTREvwojOB9ph3fr2r6eTf_5eD5fmQsfsapVMwYI3o",
    "e": "AQHF",
    "n": "oNuJk44jzFgZ9R26gfdgfgtR_9Btg8vRKh3Y0",
  }
}

```