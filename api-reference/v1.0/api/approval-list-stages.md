---
title: "List approval stages"
description: "List approval stages associated with an approval object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 03/08/2024
---

# List approval stages

Namespace: microsoft.graph

List the [approvalStage](../resources/approvalstage.md) objects associated with an [approval](../resources/approval.md). This API request is made by an approver in the following scenarios:

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), providing the identifier of the [access package assignment request](../resources/accesspackageassignmentrequest.md).
In [PIM for Groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), providing the identifier of the [assignment schedule request](../resources/privilegedaccessgroupassignmentschedulerequest.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

### For entitlement management

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

### For PIM for Groups
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PrivilegedAssignmentSchedule.Read.AzureADGroup, PrivilegedAssignmentSchedule.ReadWrite.AzureADGroup |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

To list the approval stages in entitlement management:
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{accessPackageAssignmentRequestId}/stages
```

To list the approval stages in PIM for Groups:

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/privilegedAccess/group/assignmentApprovals/{privilegedaccessgroupassignmentschedulerequestId}/stages
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of the [approvalStage](../resources/approvalstage.md) objects in the response body. If the caller does not have the right permissions, the method returns a `403 Forbidden` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_approvalstage"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/stages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-approvalstage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-approvalstage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-approvalstage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-approvalstage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-approvalstage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-approvalstage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-approvalstage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-approvalstage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalStage"
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
  "description": "List approvalstage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
