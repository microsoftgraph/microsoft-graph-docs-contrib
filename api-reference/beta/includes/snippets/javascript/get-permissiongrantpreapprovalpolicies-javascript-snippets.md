---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrantPreApprovalPolicy = await client.api('/policies/permissionGrantPreApprovalPolicies/71ba13dc-5947-4e59-bcc5-0ad5c339a853')
	.version('beta')
	.get();

```