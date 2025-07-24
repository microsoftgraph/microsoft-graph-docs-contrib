---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resume = {
  source: 'Contoso.AADProcess',
  type: 'microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated',
  data: {
    '@odata.type': 'microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration',
    stage: 'assignmentRequestCreated',
    customExtensionStageInstanceId: '7bf58d34-b3f9-4bae-8deb-abcd25cddea1',
    customExtensionStageInstanceDetail: 'Completed.'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/0e60f18c-b2a0-4887-9da8-da2e30a39d99/resume')
	.version('beta')
	.post(resume);

```