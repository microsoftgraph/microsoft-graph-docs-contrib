---
title: "Get copilotAdminLimitedMode"
description: "Read the properties and relationships of a copilotAdminLimitedMode object."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: apiPageType
ms.date: 05/08/2025
---

# Get copilotAdminLimitedMode

Namespace: microsoft.graph

Read the properties and relationships of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "copilotadminlimitedmode-get-permissions"
}
-->

<!-- { "blockType": "permissions", "name": "copilotadminlimitedmode_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/copilotadminlimitedmode-get-permissions.md)]

> [!IMPORTANT]
> Global Reader is the least privileged [administrator role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) supported for this operation.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /copilot/admin/settings/limitedMode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object in the response body.

This API can also return more HTTP status codes, such as `403 Forbidden`, `500 Internal Server Error`, and `429 Too Many Requests`.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_copilotadminlimitedmode"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/copilot/admin/settings/limitedMode
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-copilotadminlimitedmode-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-copilotadminlimitedmode-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-copilotadminlimitedmode-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-copilotadminlimitedmode-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-copilotadminlimitedmode-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-copilotadminlimitedmode-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-copilotadminlimitedmode-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.copilotAdminLimitedMode"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.copilotAdminLimitedMode",
    "isEnabledForGroup": true,
    "groupId": "4c563cdf-0efa-44c5-a384-dbf57db277df"
  }
}
```

