---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementPolicy = {
  rules: [
    {
      '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyApprovalRule',
      id: 'Approval_EndUser_Assignment',
      target: {
        caller: 'EndUser',
        operations: [
          'All'
        ],
        level: 'Assignment',
        inheritableSettings: [],
        enforcedSettings: []
      },
      setting: {
        isApprovalRequired: true,
        isApprovalRequiredForExtension: false,
        isRequestorJustificationRequired: true,
        approvalMode: 'SingleStage',
        approvalStages: [
          {
            approvalStageTimeOutInDays: 1,
            isApproverJustificationRequired: true,
            escalationTimeInMinutes: 0,
            isEscalationEnabled: false,
            primaryApprovers: [
              {
                '@odata.type': '#microsoft.graph.singleUser',
                isBackup: false,
                id: 'c277c8cb-6bb7-42e5-a17f-0add9a718151',
                description: null
              }
            ],
            escalationApprovers: []
          }
        ]
      }
    },
    {
      '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule',
      id: 'AuthenticationContext_EndUser_Assignment',
      isEnabled: false,
      claimValue: '',
      target: {
        caller: 'EndUser',
        operations: [
          'All'
        ],
        level: 'Assignment',
        inheritableSettings: [],
        enforcedSettings: []
      }
    },
    {
      '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyEnablementRule',
      id: 'Enablement_Admin_Eligibility',
      enabledRules: [],
      target: {
        caller: 'Admin',
        operations: [
          'All'
        ],
        level: 'Eligibility',
        inheritableSettings: [],
        enforcedSettings: []
      }
    },
    {
      '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyExpirationRule',
      id: 'Expiration_Admin_Eligibility',
      isExpirationRequired: true,
      maximumDuration: 'P365D',
      target: {
        caller: 'Admin',
        operations: [
          'All'
        ],
        level: 'Eligibility',
        inheritableSettings: [],
        enforcedSettings: []
      }
    },
    {
      '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyNotificationRule',
      id: 'Notification_Admin_Admin_Eligibility',
      notificationType: 'Email',
      recipientType: 'Admin',
      notificationLevel: 'All',
      isDefaultRecipientsEnabled: true,
      notificationRecipients: [],
      target: {
        caller: 'Admin',
        operations: [
          'All'
        ],
        level: 'Eligibility',
        inheritableSettings: [],
        enforcedSettings: []
      }
    }
  ]
};

await client.api('/policies/roleManagementPolicies/Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369')
	.version('beta')
	.update(unifiedRoleManagementPolicy);

```