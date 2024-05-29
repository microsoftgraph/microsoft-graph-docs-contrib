---
title: "Update identityProvider"
description: "Update properties of an identityProvider."
ms.localizationpriority: medium
doc_type: apiPageType
author: "namkedia"
ms.subservice: "entra-sign-in"
---

# Update identityProvider
Namespace: microsoft.graph

Update the properties of the specified identity provider configured in the tenant.

Among the types of providers derived from identityProviderBase, you can currently update a [socialIdentityProvider](../resources/socialidentityprovider.md) resource in Microsoft Entra ID. In Azure AD B2C, this operation can currently update a [socialIdentityProvider](../resources/socialidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) resource.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityproviderbase_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityproviderbase-update-permissions.md)]

[!INCLUDE [rbac-identity-provider-apis](../includes/rbac-for-apis/rbac-identity-provider-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md) object in Microsoft Entra tenant.

In Azure AD B2C, provide a JSON object with one or more properties that need to be updated for a [socialIdentityProvider](../resources/socialidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) object.

### socialIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The identifier for the client application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns `****`.|
|displayName|String|The display name of the identity provider.|

### appleManagedIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|developerId|String|The Apple developer identifier.|
|serviceId|String|The Apple service identifier.|
|keyId|String|The Apple key identifier.|
|certificateData|String|The certificate data which is a long string of text from the certificate, can be null.|

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

<a name='example-1-update-a-specific-social-identity-provider-azure-ad-or-azure-ad-b2c'></a>

### Example 1: Update a specific **social identity provider** (Microsoft Entra ID or Azure AD B2C)

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_socialidentityprovider",
  "sampleKeys": ["Amazon-OAUTH"]
}
-->

``` http
PATCH https://graph.microsoft.com/v1.0/identity/identityProviders/Amazon-OAUTH
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.socialIdentityProvider",
  "clientSecret": "1111111111111"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-socialidentityprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-socialidentityprovider-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-socialidentityprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-socialidentityprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-socialidentityprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-socialidentityprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-socialidentityprovider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-socialidentityprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Update a specific **Apple identity provider** (only for Azure AD B2C)

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_appleidentityprovider",
  "sampleKeys": ["Apple-Managed-OIDC"]
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identity/identityProviders/Apple-Managed-OIDC
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.socialIdentityProvider",
  "displayName": "Apple"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-appleidentityprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-appleidentityprovider-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-appleidentityprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-appleidentityprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-appleidentityprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-appleidentityprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-appleidentityprovider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-appleidentityprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
