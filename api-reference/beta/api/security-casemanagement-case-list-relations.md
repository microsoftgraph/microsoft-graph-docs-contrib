---
title: "List case relations"
description: "Get the external resource relations for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List case relations

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of external resource [relation](../resources/security-casemanagement-relation.md) objects for a [case](../resources/security-casemanagement-case.md). Each relation is an [incidentRelation](../resources/security-casemanagement-incidentrelation.md), [recommendationRelation](../resources/security-casemanagement-recommendationrelation.md), or [workspaceIndicatorRelation](../resources/security-casemanagement-workspaceindicatorrelation.md), identified by `@odata.type`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_case_list_relations" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-list-relations-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/cases/{caseId}/relations
```

## Optional query parameters

This method supports the `$select` OData query parameter. On the base collection, `$select` can reference only properties declared on [relation](../resources/security-casemanagement-relation.md). To select a property declared only on a derived type, cast the collection to the derived type first.

For example: `GET /security/caseManagement/cases/{caseId}/relations/microsoft.graph.security.caseManagement.recommendationRelation?$select=recommendationType`.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [relation](../resources/security-casemanagement-relation.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_list_case_relations"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/relations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-list-case-relations-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-list-case-relations-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-list-case-relations-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-list-case-relations-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-list-case-relations-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-list-case-relations-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-list-case-relations-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.relation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
      "id": "790478d8-6402-8452-4584-5d32e6acf31a",
      "createdDateTime": "2026-05-20T11:12:28Z",
      "createdBy": "user@contoso.com",
      "lastModifiedDateTime": "2026-05-20T11:18:45Z",
      "lastModifiedBy": "user@contoso.com",
      "relatedResourceId": "987654321"
    }
  ]
}
```
