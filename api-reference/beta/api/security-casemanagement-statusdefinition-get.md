---
title: "Get statusDefinition"
description: "Read the properties of a statusDefinition object."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get statusDefinition

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [statusDefinition](../resources/security-casemanagement-statusdefinition.md) object, including its inline **customStatuses**.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_statusdefinition_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-statusdefinition-get-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/statuses/{statusDefinitionId}
```

## Optional query parameters

This method supports the `$select` OData query parameter. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [statusDefinition](../resources/security-casemanagement-statusdefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_get_statusdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/statuses/2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-get-statusdefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-get-statusdefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-get-statusdefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-get-statusdefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-get-statusdefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-get-statusdefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-get-statusdefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.statusDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations('incidentCase')/statuses/$entity",
  "id": "2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01",
  "displayName": "Active",
  "sortOrder": 1,
  "customStatuses": [
    {
      "customStatusId": "3c2f5e7b-0d4e-4c8b-9f32-6a7b8c9d0e12",
      "displayName": "Triage",
      "sortOrder": 1,
      "isFinal": false
    }
  ]
}
```
