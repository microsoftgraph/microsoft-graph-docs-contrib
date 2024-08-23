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
                    appId: 'a7eed01f-a333-4983-bc6b-d359ec9e5eef'
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