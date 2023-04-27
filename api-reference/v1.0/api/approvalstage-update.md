---
title: "Update approvalStage"
description: "Apply approve or deny decision on an approvalStage object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Update approvalStage

Namespace: microsoft.graph

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), approve or deny an [approvalStage](../resources/approvalstage.md) object in an [approval](../resources/approval.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/{accessPackageAssignmentRequestId}/stages/{approvalStageId}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

The following table shows the properties that are required for this method.

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| reviewResult | String | Decision of the approver. Possible values are: `Approve`, `Deny`. Required.|
| justification | String | Justification related to the approver's decision. |


## Response

If successful, this method returns a `204 No Content` response code in the response body. IOf the caller does not have the right permissions, the method returns a `403 Forbidden` response code, or if the approval id is not found, the method returns `404 Not found`. If the request has already been approved by another approver in the same approval stage, the method returns `409 Conflict` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "patch_approvalstage"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageAssignmentApprovals/abd306ef-f7b2-4a10-9fd1-493454322489/stages/d4fa4045-4716-436d-aec5-57b0a713f095

{
 "reviewResult":"Approve",
 "justification":"OK"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/patch-approvalstage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/patch-approvalstage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/patch-approvalstage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/patch-approvalstage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/patch-approvalstage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-02-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patch approvalStage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
