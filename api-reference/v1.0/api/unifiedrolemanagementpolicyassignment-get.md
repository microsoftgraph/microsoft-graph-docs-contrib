---
title: "Get unifiedRoleManagementPolicyAssignment"
description: "Get the details of a role management policy assignment including the policy and rules associated with the Azure AD role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleManagementPolicyAssignment
Namespace: microsoft.graph

Get the details of a role management policy assignment including the policy and rules associated with the Azure AD role.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicyAssignments/{unifiedRoleManagementPolicyAssignmentId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. You can also specify the wildcard value `*` to expand all supported relationships, that is, `?$expand=*`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object in the response body.

## Examples

### Example 1: Retrieve a role management policy assignment

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementpolicyassignment",
  "sampleKeys": ["Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments/Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedrolemanagementpolicyassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedrolemanagementpolicyassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedrolemanagementpolicyassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedrolemanagementpolicyassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedrolemanagementpolicyassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedrolemanagementpolicyassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments/$entity",
    "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10",
    "policyId": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
    "scopeId": "/",
    "scopeType": "Directory",
    "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
}
```


### Example 2: Retrieve a role management policy assignment and expand the policy and its associated rules

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementpolicyassignment_expand_all_relationships",
  "sampleKeys": ["Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicyAssignments/Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10?$expand=policy($expand=rules)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedrolemanagementpolicyassignment-expand-all-relationships-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicyAssignments(policy(rules()))/$entity",
    "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10",
    "policyId": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
    "scopeId": "/",
    "scopeType": "Directory",
    "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10",
    "policy": {
        "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
        "displayName": "Directory",
        "description": "Directory",
        "isOrganizationDefault": false,
        "scopeId": "/",
        "scopeType": "Directory",
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
```
