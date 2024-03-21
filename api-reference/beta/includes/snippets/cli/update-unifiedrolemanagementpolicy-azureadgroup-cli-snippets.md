---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies role-management-policies patch --unified-role-management-policy-id {unifiedRoleManagementPolicy-id} --body '{\
  "rules": [\
    {\
      "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyApprovalRule",\
      "id": "Approval_EndUser_Assignment",\
      "target": {\
        "caller": "EndUser",\
        "operations": [\
          "All"\
        ],\
        "level": "Assignment",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
      },\
      "setting": {\
        "isApprovalRequired": true,\
        "isApprovalRequiredForExtension": false,\
        "isRequestorJustificationRequired": true,\
        "approvalMode": "SingleStage",\
        "approvalStages": [\
          {\
            "approvalStageTimeOutInDays": 1,\
            "isApproverJustificationRequired": true,\
            "escalationTimeInMinutes": 0,\
            "isEscalationEnabled": false,\
            "primaryApprovers": [\
              {\
                "@odata.type": "#microsoft.graph.singleUser",\
                "isBackup": false,\
                "id": "c277c8cb-6bb7-42e5-a17f-0add9a718151",\
                "description": null\
              }\
            ],\
            "escalationApprovers": []\
          }\
        ]\
      }\
    },\
    {\
      "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",\
      "id": "AuthenticationContext_EndUser_Assignment",\
      "isEnabled": false,\
      "claimValue": "",\
      "target": {\
        "caller": "EndUser",\
        "operations": [\
          "All"\
        ],\
        "level": "Assignment",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
      }\
    },\
    {\
      "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",\
      "id": "Enablement_Admin_Eligibility",\
      "enabledRules": [],\
      "target": {\
        "caller": "Admin",\
        "operations": [\
          "All"\
        ],\
        "level": "Eligibility",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
      }\
    },\
    {\
      "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyExpirationRule",\
      "id": "Expiration_Admin_Eligibility",\
      "isExpirationRequired": true,\
      "maximumDuration": "P365D",\
      "target": {\
        "caller": "Admin",\
        "operations": [\
          "All"\
        ],\
        "level": "Eligibility",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
      }\
    },\
    {\
      "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyNotificationRule",\
      "id": "Notification_Admin_Admin_Eligibility",\
      "notificationType": "Email",\
      "recipientType": "Admin",\
      "notificationLevel": "All",\
      "isDefaultRecipientsEnabled": true,\
      "notificationRecipients": [],\
      "target": {\
        "caller": "Admin",\
        "operations": [\
          "All"\
        ],\
        "level": "Eligibility",\
        "inheritableSettings": [],\
        "enforcedSettings": []\
      }\
    }\
  ]\
}\
'

```