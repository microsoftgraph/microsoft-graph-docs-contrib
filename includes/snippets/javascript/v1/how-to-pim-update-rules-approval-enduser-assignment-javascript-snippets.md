---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementPolicyRule = {
    '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyApprovalRule',
    id: 'Approval_EndUser_Assignment',
    target: {
        '@odata.type': 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget',
        caller: 'EndUser',
        operations: [
            'All'
        ],
        level: 'Assignment',
        inheritableSettings: [],
        enforcedSettings: []
    },
    setting: {
        '@odata.type': 'microsoft.graph.approvalSettings',
        isApprovalRequired: true,
        isApprovalRequiredForExtension: false,
        isRequestorJustificationRequired: true,
        approvalMode: 'SingleStage',
        approvalStages: [
            {
                '@odata.type': 'microsoft.graph.unifiedApprovalStage',
                approvalStageTimeOutInDays: 1,
                isApproverJustificationRequired: true,
                escalationTimeInMinutes: 0,
                primaryApprovers: [
                    {
                        '@odata.type': '#microsoft.graph.singleUser',
                        userId: '10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6'
                    },
                    {
                        '@odata.type': '#microsoft.graph.groupMembers',
                        groupId: '14f2746d-7d6f-4ac6-acd8-8cac318b041b'
                    }
                ],
                isEscalationEnabled: false,
                escalationApprovers: []
            }
        ]
    }
};

await client.api('/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Approval_EndUser_Assignment')
	.update(unifiedRoleManagementPolicyRule);

```