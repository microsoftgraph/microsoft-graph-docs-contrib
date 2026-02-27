---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fraudProtectionProvider = {
    '@odata.type': '#microsoft.graph.arkoseFraudProtectionProvider',
    displayName: 'Arkose Sign-Up Protection Updated',
};

await client.api('/identity/riskprevention/fraudprotectionproviders/9826466a-5275-438d-98e1-f3df6470a4b5')
	.version('beta')
	.update(fraudProtectionProvider);

```