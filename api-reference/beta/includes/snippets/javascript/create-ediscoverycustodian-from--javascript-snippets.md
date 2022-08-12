---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCustodian = {
    email: 'AdeleV@contoso.com',
};

await client.api('/security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians')
	.version('beta')
	.post(ediscoveryCustodian);

```