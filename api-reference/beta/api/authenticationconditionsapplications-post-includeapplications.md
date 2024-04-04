---
title: "Add includeApplication (to a user flow)"
description: "Add application to an externalusersselfservicesignupeventsflow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Add includeApplication (to a user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add or link an application to an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. This enables the authentication experience that's defined by the user flow to be enabled for the application. An application can only be linked to one user flow.


[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationconditionsapplications_post_includeapplications" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationconditionsapplications-post-includeapplications-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/conditions/applications/includeApplications
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, provide a JSON representation of the **appId** of the application to associate with the user flow.

## Response

If successful, this method returns a `201 Created` response code and a new [authenticationConditionApplication](../resources/authenticationconditionapplication.md) object in the response body. If unsuccessful, a `4xx` error is returned with specific details.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_includeapplications"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/conditions/applications/includeApplications
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.authenticationConditionApplication",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-includeapplications-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-includeapplications-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-includeapplications-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-includeapplications-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-includeapplications-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-includeapplications-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-includeapplications-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-includeapplications-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.authenticationConditionApplication",
  "truncated": true,
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/authenticationEventsFlows('0313cc37-d421-421d-857b-87804d61e33e')/conditions/applications/includeApplications/$entity",
    "appId": "63856651-13d9-4784-9abf-20758d509e19"
}
```
