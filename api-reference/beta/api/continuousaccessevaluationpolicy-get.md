---
title: "Get continuousAccessEvaluationPolicy"
description: "Read the properties of a continuousAccessEvaluationPolicy object."
author: "Jerrysai-zz"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Get continuousAccessEvaluationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "continuousaccessevaluationpolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/continuousaccessevaluationpolicy-get-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- {  "blockType": "ignored"} -->
``` http
GET /identity/continuousAccessEvaluationPolicy
```

## Optional query parameters
This method supports the '$select' OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [continuousAccessEvaluationPolicy](../resources/continuousaccessevaluationpolicy.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_continuousaccessevaluationpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/continuousAccessEvaluationPolicy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-continuousaccessevaluationpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-continuousaccessevaluationpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-continuousaccessevaluationpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-continuousaccessevaluationpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-continuousaccessevaluationpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-continuousaccessevaluationpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-continuousaccessevaluationpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-continuousaccessevaluationpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.continuousAccessEvaluationPolicy"
} -->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/continuousAccessEvaluationPolicy/$entity",
  "id": "00000000-0000-0000-0000-000000000006",
  "description": "Continuous Access Evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes.",
  "displayName": "Continuous Access Evaluation",
  "isEnabled": true,
  "users": [ "1608be63-df14-42a4-8932-1c9d963b026f" ],
  "groups": [ "4308b567-df14-0000-8932-1c9d963b026f" ],
  "migrate": true
}
```
