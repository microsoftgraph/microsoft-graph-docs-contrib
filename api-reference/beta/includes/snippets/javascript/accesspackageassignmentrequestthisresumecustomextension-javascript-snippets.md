---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resume = {
  source: 'Contoso.CustoEXT',
  type: 'microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated',
  data: {
    '@odata.type': 'microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData',
    approvalStage: {
      durationBeforeAutomaticDenial: 'P2D',
      escalationApprovers: [],
      fallbackEscalationApprovers: [],
      fallbackPrimaryApprovers: [],
      isApproverJustificationRequired: false,
      isEscalationEnabled: false,
      primaryApprovers: [
        {
          '@@odata.type': '#microsoft.graph.singleUser',
          description: 'Primary approver of access package assignment.',
          id: '',
          isBackup: false
        }
      ]
    },
    customExtensionStageInstanceDetail: 'A approval stage from Logic Apps',
    customExtensionStageInstanceId: '@{triggerBody()?[\'CustomExtensionStageInstanceId\']}',
    stage: 'assignmentRequestDeterminingApprovalRequirements'
  },
  source: 'LogicApps',
  type: 'microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated'
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/0e60f18c-b2a0-4887-9da8-da2e30a39d99/resume')
	.version('beta')
	.post(resume);

```