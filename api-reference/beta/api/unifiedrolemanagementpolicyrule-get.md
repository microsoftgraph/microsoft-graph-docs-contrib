---
title: "Get unifiedRoleManagementPolicyRule"
description: "Retrieve a rule defined for a role management policy."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleManagementPolicyRule
Namespace: microsoft.graph

Retrieve a rule defined for a role management policy. The rule can be one of the following types that are derived from the [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) object:
+ [unifiedRoleManagementPolicyApprovalRule](../resources/unifiedrolemanagementpolicyapprovalrule.md)
+ [unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md)
+ [unifiedRoleManagementPolicyEnablementRule](../resources/unifiedrolemanagementpolicyenablementrule.md)
+ [unifiedRoleManagementPolicyExpirationRule](../resources/unifiedrolemanagementpolicyexpirationrule.md)
+ [unifiedRoleManagementPolicyNotificationRule](../resources/unifiedrolemanagementpolicynotificationrule.md)

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For PIM for Azure AD roles

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|

### For PIM for groups

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|

## HTTP request

To retrieve a rule defined for a policy for either Azure AD roles or PIM for groups membership and ownership:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}/rules/{unifiedRoleManagementPolicyRuleId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) object in the response body.

## Examples

### Example 1: Retrieve a rule defined for a policy in PIM for Azure AD roles

#### Request

The following example retrieves a role management policy rule with ID `Expiration_Admin_Eligibility`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementpolicyrule_directory",
  "sampleKeys": ["DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448", "Expiration_Admin_Eligibility"]
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicies/DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448/rules/Expiration_Admin_Eligibility
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedrolemanagementpolicyrule-directory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedrolemanagementpolicyrule-directory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedrolemanagementpolicyrule-directory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedrolemanagementpolicyrule-directory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedrolemanagementpolicyrule-directory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedrolemanagementpolicyrule-directory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedrolemanagementpolicyrule-directory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies('DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448')/rules/$entity",
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
    "id": "Expiration_Admin_Eligibility",
    "isExpirationRequired": false,
    "maximumDuration": "P365D",
    "target": {
        "caller": "Admin",
        "operations": [
            "All"
        ],
        "level": "Eligibility",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```

### Example 2: Retrieve a rule defined for a policy in PIM for groups

#### Request

The following example retrieves a role management policy rule with ID `Expiration_Admin_Eligibility`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementpolicyrule_azureADGroup",
  "sampleKeys": ["Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369", "Expiration_Admin_Eligibility"]
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicies/Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369/rules/Expiration_Admin_Eligibility
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedrolemanagementpolicyrule-azureadgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedrolemanagementpolicyrule-azureadgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedrolemanagementpolicyrule-azureadgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedrolemanagementpolicyrule-azureadgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedrolemanagementpolicyrule-azureadgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedrolemanagementpolicyrule-azureadgroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedrolemanagementpolicyrule-azureadgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies('Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369')/rules/$entity",
    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
    "id": "Expiration_Admin_Eligibility",
    "isExpirationRequired": true,
    "maximumDuration": "P365D",
    "target": {
        "caller": "Admin",
        "operations": [
            "All"
        ],
        "level": "Eligibility",
        "inheritableSettings": [],
        "enforcedSettings": []
    }
}
```
