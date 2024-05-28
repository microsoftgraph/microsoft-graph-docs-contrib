---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
    '@odata.type': '#microsoft.graph.onTokenIssuanceStartListener',
    conditions: {
        applications: {
            includeApplications: [
                {
                    appId: 'a13d0fc1-04ab-4ede-b215-63de0174cbb4'
                }
            ]
        }
    },
    handler: {
        '@odata.type': '#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler',
        customExtension: {
            id: '6fc5012e-7665-43d6-9708-4370863f4e6e'
        }
    }
};

await client.api('/identity/authenticationEventListeners')
	.post(authenticationEventListener);

```