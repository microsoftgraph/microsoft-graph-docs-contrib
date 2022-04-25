---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customAccessPackageWorkflowExtension = {
    displayName: 'test_action_0124', 
    description: 'this is for graph testing only', 
    endpointConfiguration: { 
        '@odata.type': '#microsoft.graph.logicAppTriggerEndpointConfiguration', 
        subscriptionId: '38ab2ccc-3747-4567-b36b-9478f5602f0d', 
        resourceGroupName: 'EMLogicApp', 
        logicAppWorkflowName: 'customextension_test' 
    }, 
    authenticationConfiguration: { 
        '@odata.type': '#microsoft.graph.azureAdTokenAuthentication', 
        resourceId: 'f604bd15-f785-4309-ad7c-6fad18ddb6cb' 
    } 
};

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/32efb28c-9a7a-446c-986b-ca6528c6669d/customAccessPackageWorkflowExtensions')
	.version('beta')
	.post(customAccessPackageWorkflowExtension);

```