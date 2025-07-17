---
title: "Get userFlowLanguagePage"
description: "Read the values in a userFlowLanguagePage object for a language in a user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get userFlowLanguagePage

Namespace: microsoft.graph

Read the values in a [userFlowLanguagePage](../resources/userflowlanguagepage.md) object for a language in a user flow. These values are shown to a user during a user journey defined by a user flow.

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userflowlanguagepage_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/userflowlanguagepage-get-permissions.md)]

[!INCLUDE [rbac-b2xb2c-user-flows-apis](../includes/rbac-for-apis/rbac-b2xb2c-user-flows-apis.md)]

## HTTP request

To reference the content within the object, you must use `$value`. This returns the content within the object and allows you to reference it directly.

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identity/b2xUserFlows/{id}/languages/{id}/defaultPages/{id}/$value
GET /identity/b2xUserFlows/{id}/languages/{id}/overridesPages/{id}/$value
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [userFlowLanguagePage](../resources/userflowlanguagepage.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_userflowlanguagepage_3",
  "sampleKeys": ["B2X_1_Partner", "en", "idpselections"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/b2xUserFlows/B2X_1_Partner/languages/en/defaultPages/idpselections/$value
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-userflowlanguagepage-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-userflowlanguagepage-3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-userflowlanguagepage-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-userflowlanguagepage-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-userflowlanguagepage-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-userflowlanguagepage-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-userflowlanguagepage-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-userflowlanguagepage-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userFlowLanguagePage"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "LocalizedStrings": [
      {
        "ElementType": "ErrorMessage",
        "ElementId": null,
        "StringId": "ServiceThrottled",
        "Override": false,
        "Value": "There are too many requests at this moment. Please wait for some time and try again."
      }
   ]
}
```
