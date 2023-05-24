---
title: "Update unifiedRoleManagementPolicy"
description: "Update the details of a role management policy."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update unifiedRoleManagementPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the details of a role management policy [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For Azure AD roles

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

### For PIM for groups membership and ownership

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementPolicy.ReadWrite.AzureADGroup|

## HTTP request

To update the details of a role management policy for either Azure AD roles or PIM for groups membership and ownership:
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|rules|collection of [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) |The list of policy rules to be updated.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update the details of a policy defined for a policy for Azure AD roles

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementpolicy_directory"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}
Content-Type: application/json

{
  "rules": [
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
    }
  ]
}
```

### Response

The following is an example of the response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Update the details of a policy defined for PIM for groups membership and ownership

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementpolicy_azureADGroup"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/roleManagementPolicies/Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369
Content-Type: application/json

{
  "rules": [
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
        "isApprovalRequired": true,
        "isApprovalRequiredForExtension": false,
        "isRequestorJustificationRequired": true,
        "approvalMode": "SingleStage",
        "approvalStages": [
          {
            "approvalStageTimeOutInDays": 1,
            "isApproverJustificationRequired": true,
            "escalationTimeInMinutes": 0,
            "isEscalationEnabled": false,
            "primaryApprovers": [
              {
                "@odata.type": "#microsoft.graph.singleUser",
                "isBackup": false,
                "id": "c277c8cb-6bb7-42e5-a17f-0add9a718151",
                "description": null
              }
            ],
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
    }
  ]
}
```

### Response

The following is an example of the response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```