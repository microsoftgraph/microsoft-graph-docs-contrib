---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCaseMember = {
    recipientType: 'roleGroup',
    id: 'b9fb4f22-5f90-47a0-b309-44fe96a959fd'
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/caseMembers')
	.version('beta')
	.post(ediscoveryCaseMember);

```