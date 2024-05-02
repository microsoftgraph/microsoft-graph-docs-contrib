---
title: "Get conditionalAccessSettings"
description: "Retrieve the conditional access settings, which include the preservation of the original source IP address in network traffic for accurate identification and tracking, and the establishment of scalable network connectivity through the Global Secure Access services."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Get conditionalAccessSettings
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the conditional access settings, which include the preservation of the original source IP address in network traffic for accurate identification and tracking, and the establishment of scalable network connectivity through the Global Secure Access services.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_conditionalaccesssettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-conditionalaccesssettings-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/settings/conditionalAccess
```

## Optional query parameters
This method doesn't support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object in the response body.

## Examples

### Request
Here's an example  of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/settings/conditionalAccess
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-conditionalaccesssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-conditionalaccesssettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-conditionalaccesssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-conditionalaccesssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-conditionalaccesssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-conditionalaccesssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-conditionalaccesssettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.conditionalAccessSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/settings/conditionalAccess/$entity",
    "signalingStatus": "disabled"
}
```


