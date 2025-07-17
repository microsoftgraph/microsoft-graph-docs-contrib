---
title: "Get managementIntent"
description: "Read the properties and relationships of a managementIntent object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Get managementIntent
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementIntent](../resources/managedtenants-managementintent.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managementintent_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managementintent-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementIntents/{managementIntentId}
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

If successful, this method returns a `200 OK` response code and a [managementIntent](../resources/managedtenants-managementintent.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_managementintent"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementIntents/{managementIntentId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-managementintent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-managementintent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-managementintent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-managementintent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-managementintent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-managementintent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-managementintent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-managementintent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementIntent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementIntents/$entity",
    "id": "586895ab-8a59-4b79-be25-b06949a819bb",
    "displayName": "Default Baseline",
    "isGlobal": true,
    "managementTemplates": [
        {
            "managementTemplateId": "e5834405-43d2-4815-867d-3dd600308d1c",
            "displayName": "Baseline - Block Legacy Authentication",
            "category": "identity"
        },
        {
            "managementTemplateId": "12524106-036f-457f-b7a6-b003509d29c8",
            "displayName": "Baseline - Require MFA for Admins",
            "category": "identity"
        },
        {
            "managementTemplateId": "21230aa5-d5a9-4403-b179-baf2de242aca",
            "displayName": "Baseline - Require MFA for end users",
            "category": "identity"
        },
        {
            "managementTemplateId": "e2cadc41-a08f-45e7-8eb1-942d224dfb9a",
            "displayName": "Baseline - Enroll devices in MEM",
            "category": "devices"
        },
        {
            "managementTemplateId": "31d57d29-2d54-4074-84bd-51c008c2e6b2",
            "displayName": "Baseline - Setup Compliance Policy for Windows 10 devices",
            "category": "devices"
        },
        {
            "managementTemplateId": "b2d6d189-ea31-4cf8-b75e-41210c583127",
            "displayName": "Baseline - Setup Microsoft Defender Antivirus Policy for Windows 10 devices",
            "category": "devices"
        }
    ]
}
```
