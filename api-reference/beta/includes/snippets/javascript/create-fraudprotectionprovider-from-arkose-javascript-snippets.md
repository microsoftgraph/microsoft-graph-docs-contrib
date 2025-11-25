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
    displayName: 'Arkose Sign-Up Protection',
    publicKey: 'A1EE42E0-C88B-47FE-A176-5E9FB8F116FB',
    privateKey: '19BBE628-7DEF-4E28-AB25-BF129C760B7E',
    clientSubDomain: 'client-api',
    verifySubDomain: 'verify-api'
};

await client.api('/identity/riskPrevention/fraudProtectionProviders')
	.version('beta')
	.post(fraudProtectionProvider);

```