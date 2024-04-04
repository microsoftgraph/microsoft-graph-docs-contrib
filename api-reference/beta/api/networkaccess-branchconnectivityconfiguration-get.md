---
title: "Get branchConnectivityConfiguration"
description: "Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and Microsoft's gateway."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.topic: reference
---

# Get branchConnectivityConfiguration
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the IPSec tunnel configuration required to establish a bidirectional communication link between your organization's router and the Microsoft gateway. This information is vital for configuring your router (customer premise equipment) after creating a [deviceLink](../resources/networkaccess-devicelink.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_branchconnectivityconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-branchconnectivityconfiguration-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/branches/{branchSiteId}/connectivityConfiguration
```

## Optional query parameters
This method does not supports OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_branchconnectivityconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/connectivityConfiguration
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-branchconnectivityconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-branchconnectivityconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-branchconnectivityconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-branchconnectivityconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-branchconnectivityconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-branchconnectivityconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-branchconnectivityconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.branchConnectivityConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "http://graph.microsoft.com/beta/$metadata#branchConnectivityConfiguration",
    "branchId": "19a92090-c14e-4cea-a933-27d38f72c4d1",
    "branchName": "Seattle branch office",
    "links": [
        {
            "id": "26b92330-c246-2cef-a131-27d38f72c4s4",
            "displayName": "CPE1",
            "localConfigurations": [
                {
                    "endpoint": "20.*.*.*",
                    "asn": 65532,
                    "bgpAddress": "192.168.1.*",
                    "region": "eastUS"
                },
                {
                    "endpoint": "20.*.*.*",
                    "asn": 65532,
                    "bgpAddress": "192.168.1.*",
                    "region": "westUS"
                }
            ],
            "peerConfiguration": {
                "endpoint": "120.*.*.*",
                "asn": 65530,
                "bgpAddress": "10.*.*.*"
            }
        }
    ]
}
```

