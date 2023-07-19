---
title: "List customAuthenticationExtensions"
description: "Get a list of the customAuthenticationExtension objects and their properties."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List customAuthenticationExtensions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customAuthenticationExtension](../resources/customauthenticationextension.md) objects and their properties. Currently, only [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) objects are returned.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/customAuthenticationExtensions
```

## Optional query parameters
This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAuthenticationExtension](../resources/customauthenticationextension.md) objects in the response body. An **@odata.type** property is returned for each object to specify the type of customAuthenticationExtension.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customauthenticationextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/customAuthenticationExtensions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customauthenticationextension-csharp-snippets.md)]
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
The following is an example of the response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions",
    "value": [
        {
            "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
            "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
            "displayName": "onTokenIssuanceStartCustomExtension",
            "description": "Fetch additional claims from custom user store",
            "clientConfiguration": null,
            "behaviorOnError": null,
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

