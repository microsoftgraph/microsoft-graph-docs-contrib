---
title: "Get managementTemplate"
description: "Read the properties and relationships of a managementTemplate object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get managementTemplate
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementTemplate](../resources/managedtenants-managementtemplate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managementtemplate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managementtemplate-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderby`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [managementTemplate](../resources/managedtenants-managementtemplate.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_managementtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementTemplates/{managementTemplateId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-managementtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-managementtemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-managementtemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-managementtemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-managementtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-managementtemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-managementtemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-managementtemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementTemplates/$entity",
  "displayName": "Baseline - Block Legacy Authentication",
  "description": null,
  "category": "identity",
  "parameters": [
    {
      "valueType": "string",
      "displayName": "DisplayName",
      "description": null,
      "jsonDefaultValue": "\"Baseline - Block Legacy Authentication\"",
      "jsonAllowedValues": "null"
    },
    {
      "valueType": "string",
      "displayName": "State",
      "description": null,
      "jsonDefaultValue": "\"enabledForReportingButNotEnforced\"",
      "jsonAllowedValues": "[\"enabled\",\"disabled\",\"enabledForReportingButNotEnforced\"]"
    },
    {
      "valueType": "stringCollection",
      "displayName": "ClientAppTypes",
      "description": null,
      "jsonDefaultValue": "[\"exchangeActiveSync\",\"other\"]",
      "jsonAllowedValues": "[\"exchangeActiveSync\",\"other\"]"
    },
    {
      "valueType": "stringCollection",
      "displayName": "IncludeApplications",
      "description": null,
      "jsonDefaultValue": "[\"All\"]",
      "jsonAllowedValues": "[\"All\"]"
    },
    {
      "valueType": "stringCollection",
      "displayName": "IncludeUsers",
      "description": null,
      "jsonDefaultValue": "[\"None\"]",
      "jsonAllowedValues": "[\"All\",\"None\"]"
    },
    {
      "valueType": "stringCollection",
      "displayName": "IncludeLocations",
      "description": null,
      "jsonDefaultValue": "[\"All\"]",
      "jsonAllowedValues": "[\"All\",\"AllTrusted\"]"
    },
    {
      "valueType": "string",
      "displayName": "GrantControls.Operator",
      "description": null,
      "jsonDefaultValue": "\"OR\"",
      "jsonAllowedValues": "[\"OR\",\"AND\"]"
    },
    {
      "valueType": "stringCollection",
      "displayName": "GrantControls.BuiltInControls",
      "description": null,
      "jsonDefaultValue": "[\"block\"]",
      "jsonAllowedValues": "[\"block\"]"
    }
  ],
  "workloadActions": [
    {
      "actionId": "6a3ad0bc-5d7e-4a49-a105-c559aa4633e1",
      "category": "automated",
      "displayName": "ConditionalAccessPolicy",
      "description": null,
      "service": "AAD",
      "settings": [
        {
          "valueType": "string",
          "displayName": "DisplayName",
          "overwriteAllowed": false,
          "jsonValue": "\"Baseline - Block Legacy Authentication\""
        },
        {
          "valueType": "string",
          "displayName": "State",
          "overwriteAllowed": false,
          "jsonValue": "\"enabledForReportingButNotEnforced\""
        },
        {
          "valueType": "stringCollection",
          "displayName": "ClientAppTypes",
          "overwriteAllowed": false,
          "jsonValue": "[\"exchangeActiveSync\",\"other\"]"
        },
        {
          "valueType": "stringCollection",
          "displayName": "IncludeApplications",
          "overwriteAllowed": false,
          "jsonValue": "[\"All\"]"
        },
        {
          "valueType": "stringCollection",
          "displayName": "IncludeUsers",
          "overwriteAllowed": false,
          "jsonValue": "[\"None\"]"
        },
        {
          "valueType": "stringCollection",
          "displayName": "IncludeLocations",
          "overwriteAllowed": false,
          "jsonValue": "[\"All\"]"
        },
        {
          "valueType": "string",
          "displayName": "GrantControls.Operator",
          "overwriteAllowed": false,
          "jsonValue": "\"OR\""
        },
        {
          "valueType": "stringCollection",
          "displayName": "GrantControls.BuiltInControls",
          "overwriteAllowed": false,
          "jsonValue": "[\"block\"]"
        }
      ]
    }
  ]
}
```
