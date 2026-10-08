---
title: "Get customAuthenticationExtension"
description: "Read the properties and relationships of a customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/10/2024
---

# Get customAuthenticationExtension
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [customAuthenticationExtension](../resources/customauthenticationextension.md) object. The following derived types are currently supported.

- [onTokenIssuanceStartCustomExtension](../resources/ontokenissuancestartcustomextension.md) resource type.
- [onAttributeCollectionStartCustomExtension](../resources/onattributecollectionstartcustomextension.md) resource type.
- [onAttributeCollectionSubmitCustomExtension](../resources/onattributecollectionsubmitcustomextension.md) resource type.
- [onOtpSendCustomExtension](../resources/onOtpSendCustomExtension.md) resource type.
- [onPasswordSubmitCustomExtension](../resources/onpasswordsubmitcustomextension.md) resource type.
- [onVerifiedIdClaimValidationCustomExtension](../resources/onverifiedidclaimvalidationcustomextension.md) resource type.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customauthenticationextension_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/customauthenticationextension-get-permissions.md)]

[!INCLUDE [rbac-custom-auth-ext-apis-read](../includes/rbac-for-apis/rbac-custom-auth-ext-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [customAuthenticationExtension](../resources/customauthenticationextension.md) object in the response body.

## Examples

### Example 1: Get an onTokenIssuanceStartCustomExtension object

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_customauthenticationextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/6fc5012e-7665-43d6-9708-4370863f4e6e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-customauthenticationextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-customauthenticationextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-customauthenticationextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-customauthenticationextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-customauthenticationextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-customauthenticationextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-customauthenticationextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAuthenticationExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",
    "id": "6fc5012e-7665-43d6-9708-4370863f4e6e",
    "displayName": "onTokenIssuanceStartCustomExtension",
    "description": "Fetch additional claims from custom user store",
    "clientConfiguration": null,
    "behaviorOnError": null,
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"
    },
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://authenticationeventsAPI.contoso.com"
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
```

### Example 2: Get an onVerifiedIdClaimValidationCustomExtension object

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_customauthenticationextension_onVerifiedIdClaimValidationCustomExtension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/customAuthenticationExtensions/6a0a3429-be77-0aed-951e-1c8aed62bf8a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-customauthenticationextension-onverifiedidclaimvalidationcustomextension-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAuthenticationExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/customAuthenticationExtensions/$entity",
    "@odata.type": "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension",
    "id": "6a0a3429-be77-0aed-951e-1c8aed62bf8a",
    "displayName": "Verified ID Claim Validation",
    "description": "Validate claims from a Verified ID presentation",
    "endpointConfiguration": {
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",
        "targetUrl": "https://contoso.azurewebsites.net/api/verifiedIdClaimValidation"
    },
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
        "resourceId": "api://contoso.azurewebsites.net/verifiedIdClaimValidation"
    },
    "clientConfiguration": {
        "timeoutInMilliseconds": 2000,
        "maximumRetries": 1
    },
    "behaviorOnError": {
        "@odata.type": "#microsoft.graph.customExtensionBehaviorOnError"
    }
}
```
