---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCase = {
    displayName: 'CONTOSO LITIGATION-005',
    description: 'Project Bazooka',
    externalId: '324516'
};

await client.api('/security/cases/ediscoveryCases')
	.version('beta')
	.post(ediscoveryCase);

```