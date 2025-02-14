---
title: "List delegationSettings objects"
description: "Get a list of the delegationSettings objects and their properties."
author: "garchiro7"
ms.date: 11/19/2024
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# List delegationSettings objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the delegationSettings objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "callsettings-list-delegates-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/callsettings-list-delegates-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/communications/callSettings/delegates
GET /users/{user_id}/communications/callSettings/delegates
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegationSettings](../resources/delegationsettings.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_delegationsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/communications/callSettings/delegates
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegationSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegationSettings",
      "id": "2290d2bf-756d-7b64-5377-53a01a854ecb",
      "createdDateTime": "String (timestamp)",
      "isActive": "Boolean",
      "allowedActions": {
        "@odata.type": "microsoft.graph.delegateAllowedActions"
      }
    }
  ]
}
```

