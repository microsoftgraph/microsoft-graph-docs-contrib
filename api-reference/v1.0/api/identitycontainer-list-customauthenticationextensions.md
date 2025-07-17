---
title: "List customAuthenticationExtensions"
description: "Get a list of the customAuthenticationExtension objects and their properties."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# List customAuthenticationExtensions
Namespace: microsoft.graph

Get a list of the [customAuthenticationExtension](../resources/customauthenticationextension.md) objects and their properties. The following derived types are supported.

- [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) resource type.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_list_customauthenticationextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-customauthenticationextensions-permissions.md)]

[!INCLUDE [rbac-custom-auth-ext-apis-read](../includes/rbac-for-apis/rbac-custom-auth-ext-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/customAuthenticationExtensions
```

## Optional query parameters
This method supports the `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAuthenticationExtension](../resources/customauthenticationextension.md) objects in the response body. An **@odata.type** property is returned for each object to specify the type of customAuthenticationExtension.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customauthenticationextension"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/customAuthenticationExtensions?$filter=isOf('microsoft.graph.onTokenIssuanceStartCustomExtension')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customauthenticationextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-customauthenticationextension-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customauthenticationextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customauthenticationextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customauthenticationextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customauthenticationextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customauthenticationextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-customauthenticationextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customAuthenticationExtension)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/customAuthenticationExtensions",
    "value": [
        {
            "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
            "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
            "displayName": "onTokenIssuanceStartCustomExtension",
            "description": "Fetch additional claims from custom user store",
            "clientConfiguration": null,
            "authenticationConfiguration": {
                "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
                "resourceId": "api://authenticationeventsAPI.contoso.net/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
            },
            "endpointConfiguration": {
                "@odata.type": "#microsoft.graph.httpRequestEndpoint",
                "targetUrl": "https://authenticationeventsAPI.contoso.net"
            },
            "claimsForTokenConfiguration": [
                {
                    "claimIdInApiResponse": "DateOfBirth"
                },
                {
                    "claimIdInApiResponse": "CustomRoles"
                }
            ]
        }
    ]
}
```

