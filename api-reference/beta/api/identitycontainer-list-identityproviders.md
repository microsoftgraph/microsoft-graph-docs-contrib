---
title: "List identityProviders"
description: "Get a collection of identity provider resources that are configured for a tenant, and that are derived from identityProviderBase."
ms.localizationpriority: medium
doc_type: apiPageType
author: "brozbab"
ms.subservice: "entra-sign-in"
ms.date: 11/16/2024
---

# List identityProviders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of identity provider resources that are configured for a tenant.

Among the types of providers derived from identityProviderBase, in Microsoft Entra External ID, this operation can get a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or an [oidcIdentityProvider](../resources/oidcidentityprovider.md) resource.

In Azure AD B2C, this operation can get a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or an [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) resource.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_list_identityproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-identityproviders-permissions.md)]

[!INCLUDE [rbac-identity-provider-apis](../includes/rbac-for-apis/rbac-identity-provider-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md) or [builtinIdentityProvider](../resources/builtinidentityprovider.md) objects in the response body for a Microsoft Entra tenant.

For an Azure AD B2C tenant this method returns a `200 OK` response code and a collection of [socialIdentityProvider](../resources/socialidentityprovider.md) or [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) objects in the response body.

## Examples

<a name='example-1-list-all-identity-provider-resources-configured-in-an-azure-ad-tenant'></a>

### Example 1: List all identity provider resources configured in a workforce tenant

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase_Azure_AD_tenant"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityproviderbase-azure-ad-tenant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identityproviderbase-azure-ad-tenant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityproviderbase-azure-ad-tenant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityproviderbase-azure-ad-tenant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identityproviderbase-azure-ad-tenant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identityproviderbase-azure-ad-tenant-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identityproviderbase-azure-ad-tenant-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/identityProviders",
   "value":[
      {
         "@odata.type": "microsoft.graph.builtInIdentityProvider",
         "id": "MSASignup-OAUTH",
         "identityProviderType": "MicrosoftAccount",
         "displayName": "MicrosoftAccount"
      },
      {
         "@odata.type": "#microsoft.graph.socialIdentityProvider",
         "id": "Facebook-OAUTH",
         "displayName": "Facebook",
         "identityProviderType": "Facebook",
         "clientId": "test",
         "clientSecret": "******"
      }
   ]
}
```

### Example 2: List all identity provider resources configured in an Azure AD B2C tenant

#### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase_2"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityproviderbase-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identityproviderbase-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityproviderbase-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityproviderbase-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identityproviderbase-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identityproviderbase-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identityproviderbase-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/identityProviders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.socialIdentityProvider",
            "id": "LinkedIn-OAUTH",
            "displayName": "linkedin",
            "identityProviderType": "LinkedIn",
            "clientId": "qazx1234aA",
            "clientSecret": "******"
        },
{
            "@odata.type": "#microsoft.graph.appleManagedIdentityProvider",
            "id": "Apple-Managed-OIDC",
            "displayName": "Sign in with Apple",
            "developerId": "qazx1234",
            "serviceId": "com.microsoft.aad.b2c.iuyt.client",
            "keyId": "4294967296",
            "certificateData": "******"
        }
    ]
}

```

### Example 3: List all identity providers configured in an external tenant

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityproviderbase_CIAM"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityproviderbase-ciam-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identityproviderbase-ciam-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityproviderbase-ciam-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityproviderbase-ciam-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identityproviderbase-ciam-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identityproviderbase-ciam-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identityproviderbase-ciam-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityProviderBase",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/identityProviders",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identity/identityProviders?$select=displayName",
    "value": [
        {
            "@odata.type": "#microsoft.graph.builtInIdentityProvider",
            "id": "AADSignup-OAUTH",
            "displayName": "Azure Active Directory Sign up",
            "identityProviderType": "AADSignup",
            "state": null
        },
        {
            "@odata.type": "#microsoft.graph.builtInIdentityProvider",
            "id": "EmailOtpSignup-OAUTH",
            "displayName": "Email One Time Passcode",
            "identityProviderType": "EmailOTP",
            "state": null
        },
        {
            "@odata.type": "#microsoft.graph.builtInIdentityProvider",
            "id": "EmailPassword-OAUTH",
            "displayName": "Email with password",
            "identityProviderType": "EmailPassword",
            "state": null
        }
    ]
}
```
