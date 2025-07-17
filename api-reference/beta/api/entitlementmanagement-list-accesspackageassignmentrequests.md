---
title: "List accessPackageAssignmentRequests"
description: "Retrieve a list of accessPackageAssignmentRequest objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# List accessPackageAssignmentRequests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), retrieve a list of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects.  The resulting list includes all the assignment requests, current and well as expired, that the caller has access to read, across all catalogs and access packages.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_list_accesspackageassignmentrequests" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-list-accesspackageassignmentrequests-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

## HTTP request

> [!NOTE]
> This API will be retired soon. Use the [List assignmentRequests](../api/entitlementmanagement-list-assignmentrequests.md) API instead.

<!-- { "blockType": "ignored" } -->

```http
GET /identityGovernance/entitlementManagement/accessPackageAssignmentRequests
```

## Query parameters

This method supports the `$select`, `$expand` and `$filter` OData query parameters to help customize the response.

If the user or application only has permissions within a specific catalog or catalogs, you must include in the query a filter which specifies an access package, such as `$expand=accessPackage&$filter=accessPackage/id eq '9bbe5f7d-f1e7-4eb1-a586-38cdf6f8b1ea'`.

### Example scenarios for using query parameters

- To retrieve the access package of each request, include `$expand=accessPackage` in the query. 
- To retrieve the resulting assignment, include `$expand=accessPackageAssignment` in the query. 
- To obtain more details on the requestor, include `$expand=requestor` in the query.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request. The request URI includes `$filter` to only return requests in a particular state, and `$expand` to return details of the requestor and their connected organization as well.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accesspackageassignmentrequests"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests?$expand=requestor($expand=connectedOrganization)&$filter=(requestState eq 'PendingApproval')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-accesspackageassignmentrequests-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-accesspackageassignmentrequests-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-accesspackageassignmentrequests-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-accesspackageassignmentrequests-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-accesspackageassignmentrequests-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-accesspackageassignmentrequests-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-accesspackageassignmentrequests-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-accesspackageassignmentrequests-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "433dafca-5047-4614-95f7-a03510b1ded3",
      "requestType": "UserAdd",
      "requestState": "PendingApproval",
      "createdDateTime": "2019-10-25T22:55:11.623Z",
      "justification": "Need access",
      "answers": [],
      "requestor": {
        "connectedOrganizationId": "c3c2adbc-a863-437f-9383-ee578665317d",
        "id": "ba7ef0fb-e16f-474b-87aa-02815d061e67",
        "displayName": "displayname",
        "email": "displayname@example.com",
        "type": "User",
        "connectedOrganization": {
          "id": "c3c2adbc-a863-437f-9383-ee578665317d",
          "displayName": "example"
        }
      }
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List accessPackageAssignmentRequests",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
