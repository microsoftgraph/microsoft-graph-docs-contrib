---
title: "Get adminConsentRequestPolicy"
description: "Read the properties and relationships of an adminConsentRequestPolicy object."
author: "eringreenlee"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get adminConsentRequestPolicy

Namespace: microsoft.graph

Read the properties and relationships of an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminconsentrequestpolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminconsentrequestpolicy-get-permissions.md)]

[!INCLUDE [rbac-adminconsentrequestpolicy-apis-read](../includes/rbac-for-apis/rbac-adminconsentrequestpolicy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/adminConsentRequestPolicy
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_adminconsentrequestpolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/adminConsentRequestPolicy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-adminconsentrequestpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-adminconsentrequestpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-adminconsentrequestpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-adminconsentrequestpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-adminconsentrequestpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-adminconsentrequestpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-adminconsentrequestpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-adminconsentrequestpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminConsentRequestPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/adminConsentRequestPolicy/$entity",
  "isEnabled": true,
  "notifyReviewers": false,
  "remindersEnabled": false,
  "requestDurationInDays": 0,
  "version": 0,
  "reviewers": [
    {
      "query": "/users/906e0ee5-6372-4cc8-8248-fdf2846b48ed",
      "queryType": "MicrosoftGraph",
      "queryRoot": null
    },
    {
      "query": "/users/daddef1a-acb0-4f62-96d0-49df2495d657",
      "queryType": "MicrosoftGraph",
      "queryRoot": null
    }
  ]
}
```
