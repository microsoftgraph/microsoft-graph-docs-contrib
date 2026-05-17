---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let waitingMembers = await client.api('/users/48fbdf70-9e09-40df-9dbe-17af483ab113/cloudLicensing/waitingMembers')
	.version('beta')
	.expand('allotment($select=id,skuId,skuPartNumber)')
	.get();

```