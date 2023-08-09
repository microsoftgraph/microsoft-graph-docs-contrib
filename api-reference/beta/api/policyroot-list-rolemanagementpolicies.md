---
title: "List roleManagementPolicies"
description: "Get role management policies and their details."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List roleManagementPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of the policies in PIM that can be applied to Azure AD roles or group membership or ownership. To retrieve policies that apply to Azure RBAC, use the [Azure REST PIM API for role management policies](/rest/api/authorization/role-management-policies/list-for-scope).

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

To retrieve policies and their details for Azure AD roles scoped to the tenant:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicies?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

To retrieve details of all role management policies scoped to a group:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicies?$filter=scopeId eq '{groupId}' and scopeType eq 'Group'
```

## Optional query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **scopeId** and a **scopeType**. 

- To retrieve policies in PIM for Azure AD roles, the **scopeId** must be `/` and **scopeType** can be either `Directory` or `DirectoryRole`. 
- To retrieve policies in PIM for groups, the **scopeId** must be a group ID and **scopeType** must be `Group`.

You can also use the `$select` and `$expand` OData query parameters to help customize the response. This API also supports `$select` nested in `$expand` to return only specific properties of those rules. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) objects in the response body.

## Examples

### Example 1: Retrieve policies and their details in PIM for Azure AD roles

#### Request

The following example retrieves policies that are scoped to the tenant and apply to directory roles.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicy_directory"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicies?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicy-directory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicy-directory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicy-directory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicy-directory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicy-directory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicy-directory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicy-directory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies",
    "value": [
        {
            "id": "DirectoryRole_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9",
            "displayName": "DirectoryRole",
            "description": "DirectoryRole",
            "isOrganizationDefault": false,
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "lastModifiedDateTime": null,
            "lastModifiedBy": {
                "displayName": null,
                "id": null
            }
        },
        {
            "id": "DirectoryRole_84841066-274d-4ec0-a5c1-276be684bdd3_da83a66c-eb51-44ae-98d8-3da5f924f90a",
            "displayName": "DirectoryRole",
            "description": "DirectoryRole",
            "isOrganizationDefault": false,
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "lastModifiedDateTime": null,
            "lastModifiedBy": {
                "displayName": null,
                "id": null
            }
        }
    ]
}
```

### Example 2: Retrieve policies and their details in PIM for groups

#### Request

The following example retrieves policies that are scoped to the group and apply to PIM for groups membership and ownership.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicy_azureADGroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicies?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'&$expand=rules($select=id)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicy-azureadgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicy-azureadgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicy-azureadgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicy-azureadgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicy-azureadgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicy-azureadgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies(rules(id))",
    "value": [
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369",
            "displayName": "Group",
            "description": "Group",
            "isOrganizationDefault": false,
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "lastModifiedDateTime": null,
            "lastModifiedBy": {
                "displayName": null,
                "id": null
            },
            "rules@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies('Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369')/rules(id)",
            "rules": [
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
                    "id": "Approval_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
                    "id": "AuthenticationContext_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_EndUser_Assignment"
                }
            ]
        },
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316",
            "displayName": "Group",
            "description": "Group",
            "isOrganizationDefault": false,
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "lastModifiedDateTime": null,
            "lastModifiedBy": {
                "displayName": null,
                "id": null
            },
            "rules@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicies('Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316')/rules(id)",
            "rules": [
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_Admin_Eligibility"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_Admin_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                    "id": "Expiration_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                    "id": "Enablement_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
                    "id": "Approval_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
                    "id": "AuthenticationContext_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Admin_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Requestor_EndUser_Assignment"
                },
                {
                    "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                    "id": "Notification_Approver_EndUser_Assignment"
                }
            ]
        }
    ]
}
```
