---
title: "Get managementActionTenantDeploymentStatus"
description: "Read the properties and relationships of a managementActionTenantDeploymentStatus object."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Get managementActionTenantDeploymentStatus
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managementactiontenantdeploymentstatus_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managementactiontenantdeploymentstatus-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses/{managementActionTenantDeploymentStatusId}
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

If successful, this method returns a `200 OK` response code and a [managementActionTenantDeploymentStatus](../resources/managedtenants-managementactiontenantdeploymentstatus.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_managementactiontenantdeploymentstatus"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses/{managementActionTenantDeploymentStatusId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-managementactiontenantdeploymentstatus-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-managementactiontenantdeploymentstatus-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-managementactiontenantdeploymentstatus-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-managementactiontenantdeploymentstatus-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-managementactiontenantdeploymentstatus-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-managementactiontenantdeploymentstatus-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-managementactiontenantdeploymentstatus-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-managementactiontenantdeploymentstatus-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementActionTenantDeploymentStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses/$entity",
    "id": "df7aed9c-c05a-4fc9-b958-64fafaed911d_34298981-4fc8-4974-9486-c8909ed1521b",
    "tenantGroupId": "df7aed9c-c05a-4fc9-b958-64fafaed911d",
    "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
    "statuses": [
        {
            "managementTemplateId": "21230aa5-d5a9-4403-b179-baf2de242aca",
            "managementActionId": "4274db74-99c4-40be-bbeb-da4351136be2",
            "status": "completed",
            "workloadActionDeploymentStatuses": [
                {
                    "actionId": "fcb7ace7-3ea6-4474-912a-00ee78554445",
                    "status": "completed",
                    "deployedPolicyId": "949e8893-68fb-4c9d-b8a0-13c229a7e397",
                    "lastDeploymentDateTime": "2021-06-22T04:09:20.3054223Z",
                    "error": null
                }
            ]
        },
        {
            "managementTemplateId": "31d57d29-2d54-4074-84bd-51c008c2e6b2",
            "managementActionId": "f104bb7f-4854-4209-ba09-c3788f9894c5",
            "status": "completed",
            "workloadActionDeploymentStatuses": [
                {
                    "actionId": "00a9a585-f51c-4b68-b4f5-f0c3165df8ac",
                    "status": "completed",
                    "deployedPolicyId": "19a8d6a6-d87e-4059-85b3-c73bfc5cea15",
                    "lastDeploymentDateTime": "2021-06-22T17:01:44.851214Z",
                    "error": null
                }
            ]
        }
    ]
}
```
