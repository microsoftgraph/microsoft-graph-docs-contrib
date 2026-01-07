---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
    '@odata.type': '#microsoft.graph.onAttributeCollectionStartListener',
    priority: 500,
    conditions: {
        applications: {
            includeAllApplications: false,
            includeApplications: [
                {
                    appId: '0001111-aaaa-2222-bbbb-3333cccc4444'
                }
            ]
        }
    },
    handler: {
        '@odata.type': '#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler',
        customExtension: {
            id: '2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02'
        }
    }
};

await client.api('/identity/authenticationEventListeners')
	.version('beta')
	.post(authenticationEventListener);

```