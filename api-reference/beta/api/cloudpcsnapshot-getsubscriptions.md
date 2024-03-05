---
title: "cloudPCSnapshot: getSubscriptions"
description: "List all subscriptions that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcSubscription
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all subscriptions [cloudPcSubscription](../resources/cloudpcsubscription.md) that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcsnapshot_getsubscriptions" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcsnapshot-getsubscriptions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/snapshots/getSubscriptions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and zero or more [cloudPcSubscription](../resources/cloudpcsnapshot.md) objects in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpcsubscription"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/getSubscriptions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpcsubscription-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-cloudpcsubscription-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpcsubscription-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpcsubscription-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpcsubscription-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpcsubscription-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpcsubscription-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-cloudpcsubscription-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSubscription"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#cloudPcSubscriptions",
    "value":[
        {
            "subscriptionId": "8fd04a0b-ed49-46c0-a62d-e7980d829058",
            "subscriptionName":"Cloud PC Service INT"
        },
        {
            "subscriptionId": "618f7b25-b146-4c0e-a21b-2f1c67e78648",
            "subscriptionName":"Cloud PC HOBO Test1"
        }
    ]
}
```

