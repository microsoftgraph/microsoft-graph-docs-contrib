---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customTaskExtension = {
    displayName: 'Grant manager access to mailbox and OneDrive',
    description: 'Grant manager access to mailbox and OneDrive',
    endpointConfiguration: {
        '@odata.type': '#microsoft.graph.logicAppTriggerEndpointConfiguration',
        subscriptionId: 'c500b67c-e9b7-4ad2-a90d-77d41385ae55',
        resourceGroupName: 'RG-LCM',
        logicAppWorkflowName: 'ManagerAccess'
    },
    authenticationConfiguration: {
        '@odata.type': '#microsoft.graph.azureAdPopTokenAuthentication'
    },
    clientConfiguration: {
        '@odata.type': '#microsoft.graph.customExtensionClientConfiguration',
        maximumRetries: 1,
        timeoutInMilliseconds: 1000
    },
    callbackConfiguration: {
        '@odata.type': '#microsoft.graph.identityGovernance.customTaskExtensionCallbackConfiguration',
        timeoutDuration: 'PT20M'
    }
};

await client.api('/identityGovernance/lifecycleWorkflows/customTaskExtensions/ffcc4c85-5a14-448e-a390-77abf2700369')
	.update(customTaskExtension);

```