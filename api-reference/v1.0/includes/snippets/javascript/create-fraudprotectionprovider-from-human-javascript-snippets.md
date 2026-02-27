---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fraudProtectionProvider = {
   '@odata.type': '#microsoft.graph.humanSecurityFraudProtectionProvider',
    displayName: 'HUMAN Security Sign-Up Protection',
    appId: 'XXyy1XXXy',
    serverToken: 'xxYYxxXXX1'
};

await client.api('/identity/riskPrevention/fraudProtectionProviders')
	.post(fraudProtectionProvider);

```