---
title: "List approvalSteps"
description: "List approval steps associated with an approval object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
---

# List approvalSteps

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [approvalStep](../resources/approvalstep.md) objects associated with an [approval](../resources/approval.md). This API request is made by an approver in the following scenarios:

- In [entitlement management](../resources/entitlementmanagement-overview.md), providing the identifier of the [access package assignment request](../resources/accesspackageassignmentrequest.md).
- In [PIM for Microsoft Entra roles](../resources/privilegedidentitymanagementv3-overview.md), providing the identifier of the [role assignment schedule request](../resources/unifiedroleassignmentschedulerequest.md).
- In [PIM for groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), providing the identifier of the [assignment schedule request](../resources/privilegedaccessgroupassignmentschedulerequest.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### For entitlement management

<!-- { "blockType": "permissions", "name": "approval_list_steps" } -->
[!INCLUDE [permissions-table](../includes/permissions/approval-list-steps-permissions.md)]

<a name='for-pim-for-azure-ad-roles'></a>

### For PIM for Microsoft Entra roles

<!-- { "blockType": "permissions", "name": "approval_list_steps_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/approval-list-steps-2-permissions.md)]

### For PIM for groups

<!-- { "blockType": "permissions", "name": "approval_list_steps_3" } -->
[!INCLUDE [permissions-table](../includes/permissions/approval-list-steps-3-permissions.md)]

## HTTP request

To list the approval steps in entitlement management:

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{id}/steps
```

To list the approval steps in PIM for Microsoft Entra roles:

<!-- { "blockType": "ignored" } -->
```http
GET /roleManagement/directory/roleAssignmentApprovals/{id}/steps
```

To list the approval steps in PIM for groups:

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/privilegedAccess/group/assignmentApprovals/{id}/steps
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of the [approvalStep](../resources/approvalstep.md) objects in the response body. However, if the caller does not have the right permissions, the method returns a `403 Forbidden` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approvalstep_1"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/steps
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approvalstep-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-approvalstep-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approvalstep-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approvalstep-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approvalstep-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approvalstep-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-approvalstep-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalStep"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "d4fa4045-4716-436d-aec5-57b0a713f095",
            "displayName": null,
            "reviewedDateTime": null,
            "reviewResult": "NotReviewed",
            "status": "InProgress",
            "assignedToMe": true,
            "justification": "",
            "reviewedBy": null
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List approvalstep",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
