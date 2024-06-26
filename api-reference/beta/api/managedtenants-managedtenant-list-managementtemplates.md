---
title: "List managementTemplates"
description: "Get a list of the managementTemplate objects and their properties."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
---

# List managementTemplates
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [managementTemplate](../resources/managedtenants-managementtemplate.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managedtenant_list_managementtemplates" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managedtenant-list-managementtemplates-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementTemplates
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

If successful, this method returns a `200 OK` response code and a collection of [managementTemplate](../resources/managedtenants-managementtemplate.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_managementtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementTemplates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-managementtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-managementtemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-managementtemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-managementtemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-managementtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-managementtemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-managementtemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-managementtemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.managementTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementTemplates",
  "value": [
    {
      "id": "e5834405-43d2-4815-867d-3dd600308d1c_1",
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
  ]
}
```
