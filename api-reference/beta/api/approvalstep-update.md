---
title: "Update approvalStep"
description: "Apply approve or deny decision on an approvalStep object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
---

# Update approvalStep

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Apply approve or deny decision on an [approvalStep](../resources/approvalStep.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions required for calling this API for entitlement management

<!-- { "blockType": "permissions", "name": "approvalstep_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalstep-update-permissions.md)]

<a name='for-pim-for-azure-ad-roles'></a>

### For PIM for Microsoft Entra roles

<!-- { "blockType": "permissions", "name": "approvalstep_update_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalstep-update-2-permissions.md)]

### Permissions required for calling this API for PIM for groups

<!-- { "blockType": "permissions", "name": "approvalstep_update_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalstep-update-3-permissions.md)]

## HTTP request

To update an approval decision in entitlement management:

<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{id}/steps/{id}
```

To update an approval decision in PIM for Microsoft Entra roles:

<!-- { "blockType": "ignored" } -->
```http
PATCH /roleManagement/directory/roleAssignmentApprovals/{id}/steps/{id}
```

To update an approval decision in PIM for groups:

<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/privilegedAccess/group/assignmentApprovals/{id}/steps/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

The following table shows the properties that are required for this method.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| reviewResult | String | Decision of the approver. Possible values are: `Approve`, `Deny`.|
| justification | String | Justification related to the approver's decision. |


## Response

If successful, this method returns a `204 No Content` response code in the response body. However, if the caller doesn't have the right permissions, the method returns a `403 Forbidden` response code, or if the approval id isn't found, the method returns `404 Not found`. If the request has already been approved by another approver in the same approval stage, the method returns `409 Conflict` in the response body.

## Examples

### Request

Here's an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "patch_approvalstep"
}-->

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/steps/d4fa4045-4716-436d-aec5-57b0a713f095
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/patch-approvalstep-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/patch-approvalstep-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/patch-approvalstep-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/patch-approvalstep-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/patch-approvalstep-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/patch-approvalstep-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/patch-approvalstep-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
Content-Type: application/json
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patch approvalStep",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
