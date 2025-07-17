---
title: "Get authenticationEventListener"
description: "Read the properties and relationships of an authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Get authenticationEventListener
Namespace: microsoft.graph

Read the properties and relationships of an [authenticationEventListener](../resources/authenticationeventlistener.md) object. The **@odata.type** property in the response object indicates the type of the authenticationEventListener object. The following derived types are currently supported.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md) resource type
- [onInteractiveAuthFlowStartListener resource type](../resources/oninteractiveauthflowstartlistener.md) resource type
- [onAuthenticationMethodLoadStartListener resource type](../resources/onauthenticationmethodloadstartlistener.md) resource type
- [onAttributeCollectionListener resource type](../resources/onattributecollectionlistener.md) resource type
- [onUserCreateStartListener resource type](../resources/onusercreatestartlistener.md) resource type

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationeventlistener_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationeventlistener-get-permissions.md)]

[!INCLUDE [rbac-custom-auth-ext-apis-read](../includes/rbac-for-apis/rbac-custom-auth-ext-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners/{authenticationEventListenerId}
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_authenticationeventlistener"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/authenticationEventListeners/6fc5012e-7665-43d6-9708-4370863f4e6e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-authenticationeventlistener-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-authenticationeventlistener-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-authenticationeventlistener-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-authenticationeventlistener-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-authenticationeventlistener-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-authenticationeventlistener-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-authenticationeventlistener-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-authenticationeventlistener-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
    "conditions": {
        "applications": {
            "includeApplications@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/authenticationEventListeners('6fc5012e-7665-43d6-9708-4370863f4e6e')/microsoft.graph.onTokenIssuanceStartListener/conditions/applications/includeApplications",
            "includeApplications": [
                {
                    "appId": "77552a27-2fbf-4fb0-873e-af165ec071d5"
                }
            ]
        }
    }
}
```

