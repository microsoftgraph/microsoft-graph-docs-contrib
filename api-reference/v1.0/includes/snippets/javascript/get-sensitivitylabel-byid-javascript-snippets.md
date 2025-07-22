---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensitivityLabel = await client.api('/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23')
	.header('Authorization','Bearer {token}')
	.header('Client-Request-Id','a0b9c8d7-e6f5-a4b3-c2d1-e0f9a8b7c6d5')
	.get();

```