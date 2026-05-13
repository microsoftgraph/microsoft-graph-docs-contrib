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
  displayName: 'Verified ID Claim Validation Listener',
  priority: 500,
  conditions: {
    applications: {
      includeAllApplications: false,
      includeApplications: [
        {
          appId: '63856651-13d9-4784-9abf-20758d509e19'
        }
      ]
    }
  },
  authenticationEventsFlowId: '5a8e8f57-82b2-4cbf-b145-3e6e0c154897',
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
    },
    customExtension: {
      id: '6a0a3429-be77-0aed-951e-1c8aed62bf8a'
    }
  }
};

await client.api('/identity/authenticationEventListeners')
	.post(authenticationEventListener);

```