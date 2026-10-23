---
title: "Create policyApproval"
description: "Create a new policyApproval object."
author: "andredm7"
ms.date: 02/05/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create policyApproval

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [policyApproval](../resources/windowsupdates-policyapproval.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_post_approvals" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-post-approvals-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/policies/{policyId}/approvals
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [policyApproval](../resources/windowsupdates-policyapproval.md) object.

You can specify the following properties when you create a **policyApproval**.

|Property|Type|Description|
|:---|:---|:---|
|catalogEntryId|String|The catalog entry ID to approve. Required.|
|startDateTime|DateTimeOffset|The date and time when the approved content can start being offered. If omitted, the service uses the current time. Optional.|
|status|[windowsUpdates.approvalStatus](../resources/enums-windowsupdates.md#approvalstatus-values)|The approval status. The possible values are: `approved`, `suspended`, `unknownFutureValue`. When creating an approval, the value must be `approved`. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_policyapproval"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/policies/ab3a53f0-f7aa-10b1-04d4-8680584cbbb6/approvals
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
  "startDateTime": "2026-10-05T12:00:00Z",
  "status": "approved"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-policyapproval-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-policyapproval-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-policyapproval-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-policyapproval-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-policyapproval-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-policyapproval-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-policyapproval-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.policyApproval"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
  "approvedBy": "user",
  "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
  "createdDateTime": "2026-10-02T10:00:00Z",
  "id": "ab3a53f0-f7aa-10b1-04d4-8680584cbbb6",
  "lastModifiedDateTime": "2026-10-02T10:00:00Z",
  "startDateTime": "2026-10-05T12:00:00Z",
  "status": "approved"
}
```
