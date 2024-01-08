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
        isApprovalRequired: false,
        isApprovalRequiredForExtension: false,
        isRequestorJustificationRequired: true,
        approvalMode: 'SingleStage',
        approvalStages: [
          {
            approvalStageTimeOutInDays: 1,
            isApproverJustificationRequired: true,
            escalationTimeInMinutes: 0,
            isEscalationEnabled: false,
            primaryApprovers: [],
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
      isExpirationRequired: false,
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

await client.api('/policies/roleManagementPolicies/DirectoryRole_2132228a-d66e-401c-ab8a-a8ae31254a36_0f8c4bbc-4f1a-421c-b63d-a68f571b7fab')
	.version('beta')
	.update(unifiedRoleManagementPolicy);

```