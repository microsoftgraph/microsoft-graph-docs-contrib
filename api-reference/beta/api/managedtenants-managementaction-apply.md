---
title: "managementAction: apply"
description: "Applies a management action against a specific managed tenant. By performing this operation the appropriate configurations will be made and policies created. As example when applying the require multifactor authentication for admins management action creates a Microsoft Entra Conditional Access policy that requires multifactor authentication for all users that have been assigned an administrative directory role."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
ms.topic: reference
---

# managementAction: apply
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Applies a management action against a specific managed tenant. By performing this operation the appropriate configurations will be made and policies created. As example when applying the require multifactor authentication for admins management action creates a Microsoft Entra Conditional Access policy that requires multifactor authentication for all users that have been assigned an administrative directory role.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managementaction_apply" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managementaction-apply-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/managedTenants/managementActions/{managementActionId}/apply
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|
|tenantGroupId|String|The identifier of the tenant group.|
|managementTemplateId|String|The identifier of the [management template](../resources/managedtenants-managementtemplate.md).|

## Response

If successful, this action returns a `200 OK` response code and a [managementActionDeploymentStatus](../resources/managedtenants-managementactiondeploymentstatus.md) in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "managementaction_apply"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/managedTenants/managementActions/{managementActionId}/apply
Content-Type: application/json

{
  "tenantId": "String",
  "tenantGroupId": "String",
  "managementTemplateId": "String"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/managementaction-apply-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/managementaction-apply-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/managementaction-apply-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/managementaction-apply-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/managementaction-apply-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/managementaction-apply-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/managementaction-apply-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/managementaction-apply-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.managementActionDeploymentStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.managedTenants.ManagementActionDeploymentStatus",
  "managementTemplateId": "e2cadc41-a08f-45e7-8eb1-942d224dfb9a",
  "managementActionId": "b22a4713-8428-4952-8cac-d48962ecbdc9",
  "status": "completed",
  "workloadActionDeploymentStatuses": [
    {
      "actionId": "46b80b42-06c7-45b4-b6fb-aa0aecace87b",
      "status": "completed",
      "deployedPolicyId": null,
      "lastDeploymentDateTime": "2021-07-11T19:35:10.4463799Z",
      "error": null
    }
  ]
}
```
