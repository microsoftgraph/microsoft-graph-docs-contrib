---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policyApproval = await client.api('/admin/windows/updates/policies/2d8864c1-531f-4d5b-8225-8653ef4316d4/approvals/ab3a53f0-f7aa-10b1-04d4-8680584cbbb6')
	.version('beta')
	.get();

```