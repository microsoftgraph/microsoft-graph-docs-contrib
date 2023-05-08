---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const resume = {
  source: 'Contoso.SodCheckProcess',
  type: 'microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated',
  data: {
    '@odata.type': 'microsoft.graph.accessPackageAssignmentRequestCallbackData',
    stage: 'assignmentRequestCreated',
    customExtensionStageInstanceId: '957d0c50-466b-4840-bb5b-c92cea7141ff',
    customExtensionStageInstanceDetail: 'This user is all verified'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/0e60f18c-b2a0-4887-9da8-da2e30a39d99/resume')
	.version('beta')
	.post(resume);

```