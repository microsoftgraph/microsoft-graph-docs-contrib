---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
    '@odata.type': '#microsoft.graph.onVerifiedIdClaimValidationListener',
    displayName: 'Verified ID Claim Validation Listener (updated)',
    handler: {
        '@odata.type': '#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler',
        configuration: {
            '@odata.type': '#microsoft.graph.customExtensionOverwriteConfiguration',
            clientConfiguration: {
                '@odata.type': '#microsoft.graph.customExtensionClientConfiguration',
                maximumRetries: 1,
                timeoutInMilliseconds: 2000
            },
            behaviorOnError: {
                '@odata.type': '#microsoft.graph.customExtensionBehaviorOnError'
            }
        }
    }
};

await client.api('/identity/authenticationEventListeners/6a7455ef-0906-bbc3-f902-0f9ab8903082')
	.version('beta')
	.update(authenticationEventListener);

```