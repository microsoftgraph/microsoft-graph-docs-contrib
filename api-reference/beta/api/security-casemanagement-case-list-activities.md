---
title: "List case activities"
description: "Get the timeline activities for a security case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List case activities

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [activity](../resources/security-casemanagement-activity.md) objects in a [case](../resources/security-casemanagement-case.md) timeline.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_case_list_activities" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-case-list-activities-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/cases/{caseId}/activities
```

## Optional query parameters

This method supports the `$filter` and `$select` OData query parameters. On the base collection, these query options can reference only properties declared on [activity](../resources/security-casemanagement-activity.md). To reference a property declared only on a derived type, cast the collection to the derived type first.

For an [auditLog](../resources/security-casemanagement-auditlog.md) cast, you can filter by the **action**, **createdBy**, **createdDateTime**, **id**, **lastModifiedBy**, **lastModifiedDateTime**, and **modifiedProperties** properties. For example: `GET /security/caseManagement/cases/{caseId}/activities/microsoft.graph.security.caseManagement.auditLog?$filter=action eq 'update'`.

For a [comment](../resources/security-casemanagement-comment.md) cast, you can filter by the **createdBy**, **createdDateTime**, **id**, **lastModifiedBy**, **lastModifiedDateTime**, and **message** properties. For example: `GET /security/caseManagement/cases/{caseId}/activities/microsoft.graph.security.caseManagement.comment?$filter=message eq 'hello'`.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [activity](../resources/security-casemanagement-activity.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_list_case_activities"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/activities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-list-case-activities-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-list-case-activities-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-list-case-activities-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-list-case-activities-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-list-case-activities-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-list-case-activities-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-list-case-activities-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.activity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.comment",
      "id": "d2a408d7-9023-4e99-ac69-2e00b36314eb",
      "createdDateTime": "2026-05-20T11:12:28Z",
      "createdBy": "user@contoso.com",
      "lastModifiedDateTime": "2026-05-20T11:18:45Z",
      "lastModifiedBy": "user@contoso.com",
      "message": "This is a comment for the case."
    }
  ]
}
```
