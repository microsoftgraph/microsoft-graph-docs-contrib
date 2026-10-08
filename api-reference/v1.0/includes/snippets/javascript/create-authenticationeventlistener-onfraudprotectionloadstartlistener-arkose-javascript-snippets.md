---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationEventListener = {
  '@odata.type': '#microsoft.graph.onFraudProtectionLoadStartListener', 
  conditions: { 
    applications: { 
      includeApplications: [ 
        { 
          appId: '0001111-aaaa-2222-bbbb-3333cccc4444' 
        } 
      ] 
    } 
  }, 
  handler: { 
    '@odata.type': 
'#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler', 
    signUp: { 
      '@odata.type': '#microsoft.graph.fraudProtectionProviderConfiguration', 
      fraudProtectionProvider: { 
        '@odata.type': '#microsoft.graph.arkoseFraudProtectionProvider', 
        id: '6fedd01b-0afb-4a07-967f-d1ccbd81102b' 
      } 
    } 
  } 
};

await client.api('/identity/authenticationEventListeners')
	.post(authenticationEventListener);

```