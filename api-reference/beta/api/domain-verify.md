---
title: "domain: verify"
description: "Validate the ownership of a domain."
author: "tafra00"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 11/01/2024
---

# domain: verify

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the ownership of a [domain](../resources/domain.md). This operation only applies to an unverified domain. For an unverified domain, the **isVerified** property is `false`.

> [!NOTE]
> Verifying a domain through Microsoft Graph doesn't configure the domain for use with Microsoft 365 services like Exchange. Fully configuring the domain to work with Microsoft 365 products might require extra steps. For more information, see [Microsoft 365 admin setup](/microsoft-365/admin/setup/add-domain).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "domain_verify" } -->
[!INCLUDE [permissions-table](../includes/permissions/domain-verify-permissions.md)]

[!INCLUDE [rbac-domain-apis-write](../includes/rbac-for-apis/rbac-domain-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /domains/{id}/verify
```

> For {id}, specify the domain with its fully qualified domain name.

## Request headers

| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are optional when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|forceTakeover|Boolean|Optional. Used for external admin takeover of an unmanaged domain. The default value for this parameter is `false`. <br/><br/>If the domain to be verified is currently linked to an unmanaged tenant but you own the domain, use this parameter to take over that domain. Force takeover only succeeds when this tenant has verified their ownership of the domain by adding the TXT records to the domain registrar. For more information, see [Take over an unmanaged directory as administrator in Microsoft Entra ID](/entra/identity/users/domains-admin-takeover).|

## Response

If successful, this method returns `200 OK` response code and [domain](../resources/domain.md) object in the response body.

### Example 1: Verify a domain

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "domain_verify",
  "sampleKeys": ["contoso.com"]
}-->
```http
POST https://graph.microsoft.com/beta/domains/contoso.com/verify
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/domain-verify-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/domain-verify-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/domain-verify-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/domain-verify-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/domain-verify-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/domain-verify-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/domain-verify-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "authenticationType": "authenticationType-value",
  "availabilityStatus": "availabilityStatus-value",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true,
  "name": "contoso.com"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "domain: verify",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

### Example 2: External admin takeover of a domain

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "domain_verify_with_force_takeover",
  "sampleKeys": ["contoso.com"]
}-->
```http
POST https://graph.microsoft.com/beta/domains/contoso.com/verify

{
  "forceTakeover": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/domain-verify-with-force-takeover-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/domain-verify-with-force-takeover-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/domain-verify-with-force-takeover-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/domain-verify-with-force-takeover-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/domain-verify-with-force-takeover-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/domain-verify-with-force-takeover-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/domain-verify-with-force-takeover-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "authenticationType": "authenticationType-value",
  "availabilityStatus": "availabilityStatus-value",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true,
  "name": "contoso.com",
  "isVerified": true
}
```
