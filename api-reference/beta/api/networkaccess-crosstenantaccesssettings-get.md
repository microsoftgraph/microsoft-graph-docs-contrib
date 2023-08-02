---
title: "Get crossTenantAccessSettings"
description: "Retrieve the cross-tenant access settings, which include network packet tagging to enforce Tenant Restrictions Policies (TRv2 Policies) aimed at preventing data exfiltration to external tenants."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get crossTenantAccessSettings
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the cross-tenant access settings, which include network packet tagging to enforce Tenant Restrictions Policies (TRv2 Policies) aimed at preventing data exfiltration to external tenants.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/settings/crossTenantAccess
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_crosstenantaccesssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/settings/crossTenantAccess
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-crosstenantaccesssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-crosstenantaccesssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-crosstenantaccesssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-crosstenantaccesssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-crosstenantaccesssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-crosstenantaccesssettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.crossTenantAccessSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/settings/crossTenantAccess/$entity",
    "networkPacketTaggingStatus": "enabled"
}
```


