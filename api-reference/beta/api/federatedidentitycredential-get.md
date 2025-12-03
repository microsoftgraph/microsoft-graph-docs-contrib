---
title: "Get federatedIdentityCredential"
description: "Read the properties and relationships of a federatedIdentityCredential object assigned to an application or an agentIdentityBlueprint."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/03/2025
---

# Get federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object assigned to an [application](../resources/application.md) or an [agentIdentityBlueprint](../resources/agentidentityblueprint.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for an application

<!-- { "blockType": "permissions", "name": "federatedidentitycredential_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/federatedidentitycredential-get-permissions.md)]

[!INCLUDE [rbac-apps-serviceprincipal-creds-apis](../includes/rbac-for-apis/rbac-apps-serviceprincipal-creds-apis.md)]

### Permissions for an agentIdentityBlueprint
<!-- { "blockType": "permissions", "name": "federatedidentitycredential_get_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/federatedidentitycredential-get-2-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

For an **application**:
- You can address the application using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
- You can also address the federated identity credential with either its **id** or **name**.
<!-- { "blockType": "ignored" } -->
```http
GET /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialId}

GET /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialName}

GET /applications(appId='{appId}')/federatedIdentityCredentials/{federatedIdentityCredentialId}

GET /applications(appId='{appId}')/federatedIdentityCredentials/{federatedIdentityCredentialName}
```

For an **agentIdentityBlueprint**:
- You can address the federated identity credential with either its **id** or **name**.
<!-- { "blockType": "ignored" } -->
```http
GET /applications/{id}/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/{federatedIdentityCredentialId}

GET /applications/{id}/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/{federatedIdentityCredentialName}
```

## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Example 1: Retrieve a federated identity credential for an application

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_federatedidentitycredential"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/acd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/bdad0963-4a7a-43ae-b569-e67e1da3f2c0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-federatedidentitycredential-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-federatedidentitycredential-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-federatedidentitycredential-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-federatedidentitycredential-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-federatedidentitycredential-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-federatedidentitycredential-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-federatedidentitycredential-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedIdentityCredential"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('cd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/directoryObjects/$/Microsoft.DirectoryServices.Application('bcd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials('bdad0963-4a7a-43ae-b569-e67e1da3f2c0')/bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "id": "bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "name": "testing",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "This is my test  federated identity credential",
    "audiences": [
        "api://AzureADTokenExchange"
    ],
    "claimsMatchingExpression": null
  }
}
```

### Example 2: Retrieve a federated identity credential for an agentIdentityBlueprint

#### Request

<!-- {
  "blockType": "request",
  "name": "agentidentityblueprint_get_federatedidentitycredential"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/acd7c908-1c4d-4d48-93ee-ff38349a75c8/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/bdad0963-4a7a-43ae-b569-e67e1da3f2c0
```

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedIdentityCredential"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('cd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/directoryObjects/$/Microsoft.DirectoryServices.Application('bcd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials('bdad0963-4a7a-43ae-b569-e67e1da3f2c0')/bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "id": "bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "name": "testing",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "This is my test  federated identity credential",
    "audiences": [
        "api://AzureADTokenExchange"
    ],
    "claimsMatchingExpression": null
  }
}
```

