---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userSource = {
    email: 'admin@M365x809305.onmicrosoft.com',
    includedSources: 'mailbox, site'
};

await client.api('/security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/userSources')
	.version('beta')
	.post(userSource);

```