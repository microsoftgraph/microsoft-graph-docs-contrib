---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let waitingMember = await client.api('/users/48fbdf70-9e09-40df-9dbe-17af483ab113/cloudLicensing/waitingMembers/f2c588fc-0a33-4f95-806b-58678112b1a9')
	.version('beta')
	.expand('assignedTo')
	.get();

```