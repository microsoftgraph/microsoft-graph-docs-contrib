---
title: "Get authenticationContextClassReference"
description: "Retrieve the properties and relationships of a authenticationContextClassReference object."
ms.localizationpriority: medium
author: "swetha-rai"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Get authenticationContextClassReference

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [authenticationContextClassReference](../resources/authenticationcontextclassreference.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationcontextclassreference_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationcontextclassreference-get-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/conditionalAccess/authenticationContextClassReferences/{id}
```
## Optional query parameters

This method does not support OData query parameters.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and an [authenticationContextClassReference](../resources/authenticationcontextclassreference.md) object in the response body.

## Examples

### Request

The following example shows a request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identity_conditionalAccess_authenticationContextClassReferences",
  "sampleKeys": ["c1"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationContextClassReferences/c1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identity-conditionalaccess-authenticationcontextclassreferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-identity-conditionalaccess-authenticationcontextclassreferences-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identity-conditionalaccess-authenticationcontextclassreferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identity-conditionalaccess-authenticationcontextclassreferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identity-conditionalaccess-authenticationcontextclassreferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identity-conditionalaccess-authenticationcontextclassreferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identity-conditionalaccess-authenticationcontextclassreferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identity-conditionalaccess-authenticationcontextclassreferences-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationContextClassReference"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/authenticationContextClassReferences/$entity",
    "id": "c1",
    "displayName": "Contoso medium",
    "description": "Medium protection level defined for Contoso policy",
    "isAvailable": false
}

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get authenticationContextClassReference",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
