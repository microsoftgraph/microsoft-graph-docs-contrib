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
    stage: 'AssignmentRequestCreated',
    customExtensionStageInstanceId: '857d0c50-466b-4840-bb5b-c92cea7141ff',
    state: 'denied',
    customExtensionStageInstanceDetail: 'Potential risk user based on the SOD check'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/9e60f18c-b2a0-4887-9da8-da2e30a39d99/resume')
	.version('beta')
	.post(resume);

```