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
    displayName: 'Security Administrator'
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/caseMembers')
	.version('beta')
	.post(ediscoveryCaseMember);

```