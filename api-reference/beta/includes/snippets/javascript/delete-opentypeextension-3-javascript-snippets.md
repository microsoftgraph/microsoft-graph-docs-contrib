---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/drive/items/01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ/extensions/Com.Contoso.Referral')
	.version('beta')
	.delete();

```