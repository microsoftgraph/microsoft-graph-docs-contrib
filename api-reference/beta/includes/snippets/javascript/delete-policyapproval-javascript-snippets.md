---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/approvals/30d62e80-4028-4b1c-a458-da06c33173b0')
	.version('beta')
	.delete();

```