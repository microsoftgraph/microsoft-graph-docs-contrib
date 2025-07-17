---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let approvalItemResponse = await client.api('/solutions/approval/approvalItems/7d096f68-c4fe-4967-99dc-df0248c33a77/responses/9d4c5640-1da7-4739-924f-d10b70c734c1')
	.version('beta')
	.get();

```