---
title: "List Windows setting instances"
description: "Get a list of windowsSettingInstance objects and their properties."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: apiPageType
---

# List Windows setting instances

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [windowsSettingInstance](../resources/windowssettinginstance.md) objects and their properties for the signed-in user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowssetting-list-instances-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowssetting-list-instances-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/settings/windows/{windowsSettingId}/instances
```

## Optional query parameters

This method doesn't support OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [windowsSettingInstance](../resources/windowssettinginstance.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_windowssettinginstance"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/settings/windows/{windowsSettingId}/instances
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsSettingInstance)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsSettingInstance",
      "id": "9715f1d9-49d1-4b94-041b-443ac419d417",
      "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
      "lastModifiedDateTime": "2024-10-31T23:30:41Z",
      "createdDateTime": "2024-02-12T19:34:35.223Z",
      "expirationDateTime": "2034-02-09T19:34:33.771Z"
    },
    {
      "@odata.type": "#microsoft.graph.windowsSettingInstance",
      "id": "6984732f-86b0-8e31-dc02-37fce0df6d61",
      "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
      "lastModifiedDateTime": "2024-10-31T23:30:41Z",
      "createdDateTime": "2024-02-12T19:34:35.223Z",
      "expirationDateTime": "2034-02-09T19:34:33.771Z"
    }
  ]
}
```

