---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyApproval = {
  '@odata.type': '#microsoft.graph.windowsUpdates.policyApproval',
  catalogEntryId: '1d8864c1-531f-4d5b-8225-8653ef4316d8',
  status: 'suspended'
};

await client.api('/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/approvals/ab3a53f0-f7aa-10b1-04d4-8680584cbbb6')
	.version('beta')
	.update(policyApproval);

```