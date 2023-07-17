---
title: "List roleManagementPolicyAssignments"
description: "Get a list of the unifiedRoleManagementPolicyAssignment objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List roleManagementPolicyAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of all role management policy assignments made in PIM for Azure AD roles and PIM for groups.

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

To retrieve details of all role management policy assignments for Azure AD roles scoped to the tenant:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

To retrieve details of all role management policy assignments for groups:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicyAssignments?$filter=scopeId eq '{groupId}' and scopeType eq 'Group'
```

## Optional query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **scopeId** and a **scopeType**. 

- To retrieve policies for Azure AD roles, the **scopeId** must be `/` and, **scopeType** can be either `Directory` or `DirectoryRole`.
- To retrieve policies for groups in PIM for groups, the **scopeId** must be the group ID and **scopeType** must be `Group`. 

You can also filter by the **roleDefinitionId** or use the `$select` and `$expand` OData query parameters to help customize the response. This API also supports a nested `$expand` to retrieve the rules in policies and nested `$select` to return only specific properties of those rules. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) objects in the response body.

## Examples

### Example 1: Retrieve details of all role management policy assignments in PIM for Azure AD roles

#### Request

The following example retrieves details of all role management policy assignments that are scoped to the tenant and apply to directory roles.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_directory"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'Directory'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-directory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-directory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-directory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-directory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-directory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-directory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-directory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments",
    "value": [
        {
            "id": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9_fe930be7-5e62-47db-91af-98c3a49a38b1",
            "policyId": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        },
        {
            "id": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_da83a66c-eb51-44ae-98d8-3da5f924f90a_0526716b-113d-4c15-b2c8-68e3c22b9f80",
            "policyId": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_da83a66c-eb51-44ae-98d8-3da5f924f90a",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "0526716b-113d-4c15-b2c8-68e3c22b9f80"
        }
    ]
}
```

### Example 2: Retrieve details of all role management policy assignments for an Azure AD role and expand the policy and its associated rules

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_directory_expand_all_relationships"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'&$expand=policy($expand=rules)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-directory-expand-all-relationships-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments(policy(rules()))",
  "value": [
    {
      "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_49b55bc7-47b4-4d21-9ef8-e148e0606ede_62e90394-69f5-4237-9190-012177145e10",
      "policyId": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_49b55bc7-47b4-4d21-9ef8-e148e0606ede",
      "scopeId": "/",
      "scopeType": "DirectoryRole",
      "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
      "policy": {
        "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_49b55bc7-47b4-4d21-9ef8-e148e0606ede",
        "displayName": "DirectoryRole",
        "description": "DirectoryRole",
        "isOrganizationDefault": false,
        "scopeId": "/",
        "scopeType": "DirectoryRole",
        "lastModifiedDateTime": "2023-03-23T21:44:08.813Z",
        "lastModifiedBy": {
          "displayName": "Weijie Lin",
          "id": null
        },
        "rules": [
          {
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
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Admin_Admin_Eligibility",
            "notificationType": "Email",
            "recipientType": "Admin",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [
              "aaronlin519@yahoo.com"
            ],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Eligibility",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Requestor_Admin_Eligibility",
            "notificationType": "Email",
            "recipientType": "Requestor",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Eligibility",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Approver_Admin_Eligibility",
            "notificationType": "Email",
            "recipientType": "Approver",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Eligibility",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
            "id": "Enablement_Admin_Eligibility",
            "enabledRules": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Eligibility",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
            "id": "Expiration_Admin_Assignment",
            "isExpirationRequired": false,
            "maximumDuration": "P180D",
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
            "id": "Enablement_Admin_Assignment",
            "enabledRules": [
              "Justification"
            ],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Admin_Admin_Assignment",
            "notificationType": "Email",
            "recipientType": "Admin",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Requestor_Admin_Assignment",
            "notificationType": "Email",
            "recipientType": "Requestor",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Approver_Admin_Assignment",
            "notificationType": "Email",
            "recipientType": "Approver",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "Admin",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
            "id": "Expiration_EndUser_Assignment",
            "isExpirationRequired": false,
            "maximumDuration": "PT8H",
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
            "id": "Enablement_EndUser_Assignment",
            "enabledRules": [
              "Justification"
            ],
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
            "id": "Approval_EndUser_Assignment",
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            },
            "setting": {
              "isApprovalRequired": false,
              "isApprovalRequiredForExtension": false,
              "isRequestorJustificationRequired": true,
              "approvalMode": "SingleStage",
              "approvalStages": [
                {
                  "approvalStageTimeOutInDays": 1,
                  "isApproverJustificationRequired": true,
                  "escalationTimeInMinutes": 0,
                  "isEscalationEnabled": false,
                  "primaryApprovers": [],
                  "escalationApprovers": []
                }
              ]
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
            "id": "AuthenticationContext_EndUser_Assignment",
            "isEnabled": false,
            "claimValue": "",
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Admin_EndUser_Assignment",
            "notificationType": "Email",
            "recipientType": "Admin",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Requestor_EndUser_Assignment",
            "notificationType": "Email",
            "recipientType": "Requestor",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          },
          {
            "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
            "id": "Notification_Approver_EndUser_Assignment",
            "notificationType": "Email",
            "recipientType": "Approver",
            "notificationLevel": "All",
            "isDefaultRecipientsEnabled": true,
            "notificationRecipients": [],
            "target": {
              "caller": "EndUser",
              "operations": [
                "All"
              ],
              "level": "Assignment",
              "inheritableSettings": [],
              "enforcedSettings": []
            }
          }
        ]
      }
    }
  ]
}
```

### Example 3: Retrieve details of all role management policy assignments for PIM for groups

#### Request

The following example retrieves details of all role management policy assignments that are scoped to the group and apply to PIM for groups membership and ownership.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_azureADGroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-azureadgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-azureadgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-azureadgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-azureadgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-azureadgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-azureadgroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-azureadgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments",
    "value": [
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369_member",
            "policyId": "Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369",
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "roleDefinitionId": "member"
        },
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316_owner",
            "policyId": "Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316",
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "roleDefinitionId": "owner"
        }
    ]
}
```

### Example 4: Retrieve details of all role management policy assignments for PIM for groups ownership of a group and expand the policy and its associated rules

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_azureADGroup_expand_all_relationships"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group' and roleDefinitionId eq 'owner'&$expand=policy($expand=rules)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments(policy(rules()))",
    "value": [
        {
            "id": "Group_7e526275-97a8-4dc6-932a-4db521cccf96_c2e2ba31-f113-406b-9e86-4ae08781ce2e_owner",
            "policyId": "Group_7e526275-97a8-4dc6-932a-4db521cccf96_c2e2ba31-f113-406b-9e86-4ae08781ce2e",
            "scopeId": "7e526275-97a8-4dc6-932a-4db521cccf96",
            "scopeType": "Group",
            "roleDefinitionId": "owner",
            "policy": {
                "id": "Group_7e526275-97a8-4dc6-932a-4db521cccf96_c2e2ba31-f113-406b-9e86-4ae08781ce2e",
                "displayName": "Group",
                "description": "Group",
                "isOrganizationDefault": false,
                "scopeId": "7e526275-97a8-4dc6-932a-4db521cccf96",
                "scopeType": "Group",
                "lastModifiedDateTime": null,
                "lastModifiedBy": {
                    "displayName": null,
                    "id": null
                },
                "rules": [
                    {
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
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                        "id": "Enablement_Admin_Eligibility",
                        "enabledRules": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Eligibility",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Admin_Admin_Eligibility",
                        "notificationType": "Email",
                        "recipientType": "Admin",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Eligibility",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Requestor_Admin_Eligibility",
                        "notificationType": "Email",
                        "recipientType": "Requestor",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Eligibility",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Approver_Admin_Eligibility",
                        "notificationType": "Email",
                        "recipientType": "Approver",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Eligibility",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                        "id": "Expiration_Admin_Assignment",
                        "isExpirationRequired": true,
                        "maximumDuration": "P180D",
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                        "id": "Enablement_Admin_Assignment",
                        "enabledRules": [
                            "Justification"
                        ],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Admin_Admin_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Admin",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Requestor_Admin_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Requestor",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Approver_Admin_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Approver",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "Admin",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",
                        "id": "Expiration_EndUser_Assignment",
                        "isExpirationRequired": true,
                        "maximumDuration": "PT8H",
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
                        "id": "Enablement_EndUser_Assignment",
                        "enabledRules": [
                            "Justification"
                        ],
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",
                        "id": "Approval_EndUser_Assignment",
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        },
                        "setting": {
                            "isApprovalRequired": false,
                            "isApprovalRequiredForExtension": false,
                            "isRequestorJustificationRequired": true,
                            "approvalMode": "SingleStage",
                            "approvalStages": [
                                {
                                    "approvalStageTimeOutInDays": 1,
                                    "isApproverJustificationRequired": true,
                                    "escalationTimeInMinutes": 0,
                                    "isEscalationEnabled": false,
                                    "primaryApprovers": [],
                                    "escalationApprovers": []
                                }
                            ]
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
                        "id": "AuthenticationContext_EndUser_Assignment",
                        "isEnabled": false,
                        "claimValue": null,
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Admin_EndUser_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Admin",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Requestor_EndUser_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Requestor",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    },
                    {
                        "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",
                        "id": "Notification_Approver_EndUser_Assignment",
                        "notificationType": "Email",
                        "recipientType": "Approver",
                        "notificationLevel": "All",
                        "isDefaultRecipientsEnabled": true,
                        "notificationRecipients": [],
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "All"
                            ],
                            "level": "Assignment",
                            "inheritableSettings": [],
                            "enforcedSettings": []
                        }
                    }
                ]
            }
        }
    ]
}
```
