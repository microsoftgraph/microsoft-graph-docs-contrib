---
title: "unifiedRoleEligibilityScheduleRequest: cancel"
description: "Immediately cancel a unifiedRoleEligibilityScheduleRequest object whose status is Granted."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# unifiedRoleEligibilityScheduleRequest: cancel
Namespace: microsoft.graph

Immediately cancel a unifiedRoleEligibilityScheduleRequest object whose status is `Granted` and have the system automatically delete the cancelled request after 30 days. After calling this action, the **status** of the cancelled **unifiedRoleEligibilityScheduleRequest** changes to `Revoked`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedroleeligibilityschedulerequest_cancel" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroleeligibilityschedulerequest-cancel-permissions.md)]

[!INCLUDE [rbac-pim-entra-roles-apis](../includes/rbac-for-apis/rbac-pim-entra-roles-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /roleManagement/directory/roleEligibilityScheduleRequests/{unifiedRoleEligibilityScheduleRequestId}/cancel
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code. Attempting to cancel a request that is not in a cancelable state, for example, a unifiedRoleEligibilityScheduleRequest object whose **status** is `Provisioned` or `Failed`, returns a `400 Bad Request` error code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unifiedroleeligibilityschedulerequestthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/roleManagement/directory/roleEligibilityScheduleRequests/532bef1f-c677-4564-aa6f-811444a4f018/cancel
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unifiedroleeligibilityschedulerequestthiscancel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/unifiedroleeligibilityschedulerequestthiscancel-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/unifiedroleeligibilityschedulerequestthiscancel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unifiedroleeligibilityschedulerequestthiscancel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unifiedroleeligibilityschedulerequestthiscancel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/unifiedroleeligibilityschedulerequestthiscancel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/unifiedroleeligibilityschedulerequestthiscancel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/unifiedroleeligibilityschedulerequestthiscancel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

