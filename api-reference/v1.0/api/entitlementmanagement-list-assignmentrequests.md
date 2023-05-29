---
title: "List accessPackageAssignmentRequests"
description: "Retrieve a list of accessPackageAssignmentRequest objects."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# List assignmentRequests

Namespace: microsoft.graph

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects.  The resulting list includes all the assignment requests, current and well as expired, that the caller has access to read, across all catalogs and access packages.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/assignmentRequests
```

## Query parameters

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
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accesspackageassignmentrequest"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests
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

---

### Response
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

