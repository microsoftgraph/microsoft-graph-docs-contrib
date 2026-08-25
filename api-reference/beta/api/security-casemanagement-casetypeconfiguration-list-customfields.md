---
title: "List customFields"
description: "Get the customFieldDefinition objects that make up the custom-field schema for a case type."
author: "noamlandress"
ms.date: 07/20/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List customFields

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) objects that make up the custom-field (blank-form) schema for a [caseTypeConfiguration](../resources/security-casemanagement-casetypeconfiguration.md).

The **customFieldDefinition** type is abstract. Each returned object is one of the following derived types, differentiated by `@odata.type`: [stringCustomFieldDefinition](../resources/security-casemanagement-stringcustomfielddefinition.md), [numberCustomFieldDefinition](../resources/security-casemanagement-numbercustomfielddefinition.md), [dateTimeCustomFieldDefinition](../resources/security-casemanagement-datetimecustomfielddefinition.md), or [optionsCustomFieldDefinition](../resources/security-casemanagement-optionscustomfielddefinition.md).

When creating or updating a case, use each definition's **displayName**, not its **id**, as the dynamic property name in **customFields**. The name must match exactly one definition. Map the definition type to the required typed object by using the [custom field value mapping](../resources/security-casemanagement-customfieldvalues.md#custom-field-value-mapping).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_casetypeconfiguration_list_customfields" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-casetypeconfiguration-list-customfields-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfigurationId}/customFields
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customFieldDefinition](../resources/security-casemanagement-customfielddefinition.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_list_customfields"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/customFields
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-list-customfields-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-list-customfields-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-list-customfields-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-list-customfields-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-list-customfields-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-list-customfields-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-list-customfields-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response. It returns a heterogeneous collection; each item includes its `@odata.type`.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.caseManagement.customFieldDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations('incidentCase')/customFields",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.stringCustomFieldDefinition",
      "id": "6f5a8fae-3071-4fbe-c265-9d0e1f2a3b45",
      "displayName": "Reference",
      "description": "External reference number",
      "isRequired": false,
      "isDisabled": false,
      "defaultValue": null
    },
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.optionsCustomFieldDefinition",
      "id": "7a6b90bf-4182-4acf-d376-0e1f2a3b4c56",
      "displayName": "Severity",
      "description": "Case severity",
      "isRequired": true,
      "isDisabled": false,
      "options": ["low", "medium", "high"],
      "defaultValues": ["medium"]
    }
  ]
}
```
