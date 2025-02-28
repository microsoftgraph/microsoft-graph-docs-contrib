---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const exportItemResponse = {
    itemIds: [
        'EDSVrdi3lRAADmpnf1AAA=',
        'EDSVrdi3lRAAD45b7RAAA='
    ]
};

await client.api('/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/exportItems')
	.version('beta')
	.post(exportItemResponse);

```