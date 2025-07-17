---
title: "Delete authenticationConditionApplication (from a user flow)"
description: "Remove an application from an authenticationEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 08/13/2024
---

# Delete authenticationConditionApplication (from a user flow)
Namespace: microsoft.graph

Remove or unlink [an application](../resources/authenticationconditionapplication.md) from an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. This disables the customized authentication experience defined for the application.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationconditionapplication_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationconditionapplication-delete-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications/{appId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
Don't supply a request body for this method.


## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error is returned with specific details.

## Examples

#### Request
The following example shows a request. `63856651-13d9-4784-9abf-20758d509e19` represents the **appId** of the application, also known as the client ID, not the object ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_includeApplications"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications/63856651-13d9-4784-9abf-20758d509e19
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-includeapplications-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-includeapplications-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-includeapplications-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-includeapplications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-includeapplications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-includeapplications-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-includeapplications-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-includeapplications-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
