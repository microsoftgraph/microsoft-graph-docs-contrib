---
title: "Get forwardingPolicyLink"
description: "Retrieve information about a specific link between a forwarding policy and a forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# Get forwardingPolicyLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve information about a specific link between a forwarding policy and a forwarding profile.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_forwardingpolicylink_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-forwardingpolicylink-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingProfiles/{forwardingProfileId}/policies/{forwardingPolicyId}
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_forwardingpolicylink"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{profileId}/policies/{forwardingPolicyLinkId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-forwardingpolicylink-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-forwardingpolicylink-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-forwardingpolicylink-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-forwardingpolicylink-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-forwardingpolicylink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-forwardingpolicylink-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-forwardingpolicylink-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingPolicyLink"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingProfiles('a5bb6d50-dbe3-4767-b883-12e1a915bc53')/policies/$entity",
    "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
    "id": "3ef2446f-7ddf-4e80-af04-821534489155",
    "state": "enabled",
    "version": "1.0.0",
    "policy": {
        "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicy",
        "id": "81e6666b-dcf3-4ee6-9212-adb12df18dab",
        "name": "Exchange Online",
        "description": "These properties represent Exchange Online endpoints that should be reachable to use the service.",
        "version": "1.0.0",
        "trafficForwardingType": "m365"
    }
}
```


