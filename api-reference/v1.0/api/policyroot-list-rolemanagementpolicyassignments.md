---
title: "List roleManagementPolicyAssignments"
description: "Get the details of all role management policy assignments including the policies and rules associated with the Microsoft Entra roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List roleManagementPolicyAssignments
Namespace: microsoft.graph

Get the details of all role management policy assignments made in PIM for Microsoft Entra roles and PIM for groups.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<a name='for-pim-for-azure-ad-roles'></a>

### For PIM for Microsoft Entra roles
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|

[!INCLUDE [rbac-pim-entra-roles-apis](../includes/rbac-for-apis/rbac-pim-entra-roles-apis.md)]

### For PIM for groups
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|

## HTTP request

To retrieve details of all role management policy assignments for Microsoft Entra roles scoped to the tenant:
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

## Query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **scopeId** and a **scopeType**. 

- To retrieve policies for Microsoft Entra roles, the **scopeId** must be `/` and, **scopeType** can be either `Directory` or `DirectoryRole`.
- To retrieve policies for groups in PIM for groups, the **scopeId** must be the group ID and **scopeType** must be `Group`. 

You can also filter by the **roleDefinitionId** or use the `$select` and `$expand` OData query parameters to help customize the response. This API also supports a nested `$expand` to retrieve the rules in policies and nested `$select` to return only specific properties of those rules. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) objects in the response body.

## Examples

<a name='example-1-retrieve-details-of-all-role-management-policy-assignments-in-pim-for-azure-ad-roles'></a>

### Example 1: Retrieve details of all role management policy assignments in PIM for Microsoft Entra roles

#### Request

The following example retrieves details of all role management policy assignments that are scoped to the tenant and apply to directory roles.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'Directory'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrolemanagementpolicyassignment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments",
    "value": [
        {
            "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10",
            "policyId": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
        },
        {
            "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_23b16f1a-1f8d-4891-93b1-21244cdf6115_2af84b1e-32c8-42b7-82bc-daa82404023b",
            "policyId": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_23b16f1a-1f8d-4891-93b1-21244cdf6115",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "2af84b1e-32c8-42b7-82bc-daa82404023b"
        }
    ]
}
```


<a name='example-2-retrieve-details-of-all-role-management-policy-assignments-in-pim-for-azure-ad-roles-and-expand-the-policy-and-its-associated-rules'></a>

### Example 2: Retrieve details of all role management policy assignments in PIM for Microsoft Entra roles and expand the policy and its associated rules

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_expand_all_relationships"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'&$expand=policy($expand=rules)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementpolicyassignment-expand-all-relationships-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments(policy(rules()))",
    "value": [
        {
            "id": "DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10",
            "policyId": "DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
            "policy": {
                "id": "DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
                "displayName": "DirectoryRole",
                "description": "DirectoryRole",
                "isOrganizationDefault": false,
                "scopeId": "/",
                "scopeType": "DirectoryRole",
                "lastModifiedDateTime": null,
                "lastModifiedBy": {
                    "displayName": null,
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                            "MultiFactorAuthentication",
                            "Justification"
                        ],
                        "target": {
                            "caller": "EndUser",
                            "operations": [
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
                                "all"
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
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-azureadgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrolemanagementpolicyassignment-azureadgroup-cli-snippets.md)]
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

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments",
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
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group' and roleDefinitionId eq 'owner'&$expand=policy($expand=rules)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrolemanagementpolicyassignment-azureadgroup-expand-all-relationships-cli-snippets.md)]
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

The following example shows the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments(policy(rules()))",
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
