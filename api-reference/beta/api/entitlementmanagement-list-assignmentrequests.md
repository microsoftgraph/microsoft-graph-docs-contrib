---
title: "List assignmentRequests"
description: "Retrieve a list of accessPackageAssignmentRequest objects."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 11/06/2024
---

# List assignmentRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects.  The resulting list includes all the assignment requests, current and well as expired, that the caller has access to read, across all catalogs and access packages.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_list_assignmentrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-list-assignmentrequests-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

This general collection read doesn't include detailed separation of duties (SoD) findings in **resourceRoleRiskAnalysisResults**, including when the caller is an administrator. Selecting, filtering, or expanding a request doesn't change this rule. Use an eligible [filterByCurrentUser](../api/accesspackageassignmentrequest-filterbycurrentuser.md) view or [item read](../api/accesspackageassignmentrequest-get.md) for detailed findings.

Request history can independently contain an action of `SodAnalysisCompleted` with a **detail** string containing the reported conflict count. A positive count indicates conflicts, and `"0"` indicates zero reported conflicts, not an unconditional risk-free assessment. A missing, empty, or invalid count is unknown, not zero. An unavailable detailed-result collection must not be interpreted as no conflicts.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentRequests
```

## Optional query parameters

This method supports the `$select`, `$expand` and `$filter` OData query parameters to help customize the response.  Not all attributes of an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) are supported for filtering.

If the user or application only has permissions within a specific catalog or catalogs, you must include in the query a filter which specifies an access package, such as `$expand=accessPackage&$filter=accessPackage/id eq '9bbe5f7d-f1e7-4eb1-a586-38cdf6f8b1ea'`.

### Example scenarios for using query parameters

- To retrieve requests created after a specific date, include `$filter=createdDateTime gt 2022-04-01T00:00:01Z` in the query.
- To retrieve the access package of each request, include `$expand=accessPackage` in the query.
- To retrieve the resulting assignment, include `$expand=assignment` in the query.
- To obtain more details on the requestor, include `$expand=requestor` in the query.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization | Bearer \{token\}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects in the response body.

## Examples

### Example 1: List assignment requests

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accesspackageassignmentrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/assignmentRequests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accesspackageassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accesspackageassignmentrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accesspackageassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accesspackageassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accesspackageassignmentrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accesspackageassignmentrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-accesspackageassignmentrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "7999249e-249e-7999-9e24-99799e249979",
      "requestType": "userAdd",
      "state": "delivered",
      "status": "Delivered",
      "createdDateTime": "2019-10-25T22:55:11.623Z",
      "completedDateTime": "2019-10-26T22:55:11.623Z",
      "schedule": {
        "@odata.type": "microsoft.graph.entitlementManagementSchedule"
      }
    }
  ]
}
```

### Example 2: Read a recorded SoD conflict count from history

This shortened response illustrates a completed analysis with two reported conflicts. Detailed findings aren't included by this collection read. The presence and count of findings must not be inferred from the representation of an excluded **resourceRoleRiskAnalysisResults** property.

#### Request

<!-- { "blockType": "request", "name": "list_assignmentrequests_sod_history" } -->
```http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/assignmentRequests
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.accessPackageAssignmentRequest)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "11111111-2222-4333-8444-555555555555",
      "history": [
        {
          "action": "SodAnalysisCompleted",
          "detail": "2"
        }
      ]
    }
  ]
}
```
