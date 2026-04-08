---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customCalloutExtension = {
  '@odata.type': '#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension',
  displayName: 'test_action_0124_email',
  description: 'this is for graph testing only',
  endpointConfiguration: {
    '@odata.type': '#microsoft.graph.logicAppTriggerEndpointConfiguration',
    subscriptionId: '38ab2ccc-3747-4567-b36b-9478f5602f0d',
    resourceGroupName: 'test',
    logicAppWorkflowName: 'elm-extension-email'
  },
  authenticationConfiguration: {
    '@odata.type': '#microsoft.graph.azureAdPopTokenAuthentication'
  },
  callbackConfiguration: {
    '@odata.type': 'microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration',
    durationBeforeTimeout: 'PT1H'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/a9286c9c-7659-4b2e-ba44-4d1f2ce07746/accessPackagecustomWorkflowExtensions')
	.version('beta')
	.post(customCalloutExtension);

```