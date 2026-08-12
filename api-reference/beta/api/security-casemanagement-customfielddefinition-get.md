---
title: "Get customFieldDefinition"
description: "Read the properties of a customFieldDefinition object."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get customFieldDefinition

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) object. The **customFieldDefinition** type is abstract; the returned object is one of its derived types, differentiated by `@odata.type`: [stringCustomFieldDefinition](../resources/security-casemanagement-stringcustomfielddefinition.md), [numberCustomFieldDefinition](../resources/security-casemanagement-numbercustomfielddefinition.md), [dateTimeCustomFieldDefinition](../resources/security-casemanagement-datetimecustomfielddefinition.md), or [optionsCustomFieldDefinition](../resources/security-casemanagement-optionscustomfielddefinition.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_customfielddefinition_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-customfielddefinition-get-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/customFields/{customFieldDefinitionId}
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

If successful, this method returns a `200 OK` response code and a [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) object (one of its derived types) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_get_customfielddefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/customFields/7a6b90bf-4182-4acf-d376-0e1f2a3b4c56
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-get-customfielddefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-get-customfielddefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-get-customfielddefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-get-customfielddefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-get-customfielddefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-get-customfielddefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.caseManagement.customFieldDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations('incidentCase')/customFields/$entity",
  "@odata.type": "#microsoft.graph.security.caseManagement.optionsCustomFieldDefinition",
  "id": "7a6b90bf-4182-4acf-d376-0e1f2a3b4c56",
  "displayName": "Severity",
  "description": "Case severity",
  "isRequired": true,
  "isDisabled": false,
  "options": ["low", "medium", "high"],
  "defaultValues": ["medium"]
}
```
