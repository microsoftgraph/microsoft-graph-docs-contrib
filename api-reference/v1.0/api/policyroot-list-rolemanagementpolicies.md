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

Get role management policies and their details.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagement.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicies?$filter=scopeId eq 'scopeId' and scopeType eq 'scopeType'
```

## Query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **scopeId** and a **scopeType**. You can also use the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) objects in the response body.

## Examples

### Example 1: Retrieve the role management policies that apply to Azure AD roles

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicy"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicies?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicy-powershell-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicies",
    "value": [
        {
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
            }
        },
        {
            "id": "DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_23b16f1a-1f8d-4891-93b1-21244cdf6115",
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

### Example 2: Retrieve the role management policies that apply to the directory and expand the associated rules

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicy_expand_rules"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/roleManagementPolicies?$filter=scopeId eq '/' and scopeType eq 'Directory'&$expand=rules
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicy-expand-rules-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicy-expand-rules-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicy-expand-rules-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicy-expand-rules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicy-expand-rules-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicy-expand-rules-powershell-snippets.md)]
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/roleManagementPolicies(rules())",
    "value": [
        {
            "id": "Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448",
            "displayName": "Directory",
            "description": "Directory",
            "isOrganizationDefault": false,
            "scopeId": "/",
            "scopeType": "Directory",
            "lastModifiedDateTime": "2022-04-20T16:12:29.553Z",
            "lastModifiedBy": {
                "displayName": "MOD Administrator",
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
    ]
}
```
