---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCaseMember = {
    recipientType: 'user',
    id: 'c4af6f9d-37f6-43f9-9e17-601544234146'
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/caseMembers')
	.version('beta')
	.post(ediscoveryCaseMember);

```