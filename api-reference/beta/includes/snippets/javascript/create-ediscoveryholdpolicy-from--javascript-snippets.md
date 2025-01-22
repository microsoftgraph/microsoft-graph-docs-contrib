---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryHoldPolicy = {
    displayName: 'My legalHold with sources',
    description: 'Created from Graph API',
    contentQuery: 'KQL content query',
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalHolds')
	.version('beta')
	.post(ediscoveryHoldPolicy);

```