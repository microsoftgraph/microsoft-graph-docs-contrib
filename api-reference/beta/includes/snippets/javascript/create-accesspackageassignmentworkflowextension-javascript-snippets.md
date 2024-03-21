---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customCalloutExtension = {
   value: {
      '@odata.type':'#microsoft.graph.accessPackageAssignmentWorkflowExtension',
      displayName: 'test_action_0127_email',
      description: 'this is for graph testing only',
      endpointConfiguration: {
         '@odata.type':'#microsoft.graph.logicAppTriggerEndpointConfiguration',
         subscriptionId: '38ab2ccc-3747-4567-b36b-9478f5602f0d',
         resourceGroupName: 'test',
         logicAppWorkflowName: 'elm-extension-email'
      },
      authenticationConfiguration: {
         '@odata.type':'#microsoft.graph.azureAdPopTokenAuthentication'
      }
   }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/accessPackagecustomWorkflowExtensions')
	.version('beta')
	.post(customCalloutExtension);

```