---
title: "Get managementAction"
description: "Read the properties and relationships of a managementAction object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get managementAction
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementAction](../resources/managedtenants-managementaction.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managementaction_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managementaction-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementActions/{managementActionId}
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

If successful, this method returns a `200 OK` response code and a [managementAction](../resources/managedtenants-managementaction.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_managementaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementActions/{managementActionId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-managementaction-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-managementaction-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-managementaction-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-managementaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-managementaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-managementaction-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-managementaction-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-managementaction-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementAction"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementActions/$entity",
    "id": "4274db74-99c4-40be-bbeb-da4351136be2",
    "referenceTemplateId": "21230aa5-d5a9-4403-b179-baf2de242aca",
    "displayName": "Baseline - Require MFA for end users",
    "description": null,
    "category": "identity",
    "workloadActions": [
        {
            "actionId": "fcb7ace7-3ea6-4474-912a-00ee78554445",
            "category": "automated",
            "displayName": "ConditionalAccessPolicy",
            "description": null,
            "service": "AAD",
            "settings": [
                {
                    "valueType": "string",
                    "displayName": "DisplayName",
                    "overwriteAllowed": false,
                    "jsonValue": "\"Baseline - Require MFA for end users\""
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
                    "jsonValue": "[\"All\"]"
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
                    "jsonValue": "[\"mfa\"]"
                }
            ]
        }
    ]
}
```
