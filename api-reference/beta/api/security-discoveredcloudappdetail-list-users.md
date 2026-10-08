---
title: "List users"
description: "Get a list of users who accessed a discovered cloud app."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 11/15/2024
---

# List users

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [users](../resources/security-discoveredcloudappuser.md) who accessed a discovered cloud app.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_discoveredcloudappdetail_list_users"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-discoveredcloudappdetail-list-users-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/dataDiscovery/cloudAppDiscovery/uploadedStreams/{streamId}/microsoft.graph.security.aggregatedAppsDetails(period=duration'{duration}')/{appId}/users
```

> [!NOTE]
> `period` is a required parameter of type Duration that specifies the time frame for querying the data. Supported time frames include the last 7, 30, or 90 days.

## Optional query parameters

This method supports the `$select`, `$filter`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.discoveredCloudAppUser](../resources/security-discoveredcloudappuser.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_discoveredcloudappuser"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/dataDiscovery/cloudAppDiscovery/uploadedStreams/93b60b3e-3a28-bf33-2d73-3cb0199c5f7a/microsoft.graph.security.aggregatedAppsDetails(period=duration'P90D')/12345/users
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-discoveredcloudappuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.discoveredCloudAppUser)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.discoveredCloudAppUser",
      "userIdentifier": "AnonymousUser"
    }
  ]
}
```

