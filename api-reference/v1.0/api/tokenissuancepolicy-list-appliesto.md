---
title: "List appliesTo"
description: "Get a list of directoryObject objects that a tokenIssuancePolicy object has been applied to."
ms.localizationpriority: medium
author: "luleonpla"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 07/30/2024
---

# List appliesTo

Namespace: microsoft.graph



Get a list of [directoryObject](../resources/directoryObject.md) objects that a [tokenIssuancePolicy](../resources/tokenissuancepolicy.md) object has been applied to. The tokenIssuancePolicy can only be applied to [application](../resources/application.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/tokenissuancepolicy-list-appliesto-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/tokenIssuancePolicies/{id}/appliesTo
```

## Optional query parameters

This method supports the `$expand`, `$select`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). When using `$expand`, make sure your app requests permissions to read the expanded objects.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_appliesto_3"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/tokenIssuancePolicies/{id}/appliesTo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-appliesto-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-appliesto-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-appliesto-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-appliesto-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-appliesto-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-appliesto-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-appliesto-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-appliesto-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "id-value",
      "deletedDateTime": "datetime-value"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List appliesTo",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

