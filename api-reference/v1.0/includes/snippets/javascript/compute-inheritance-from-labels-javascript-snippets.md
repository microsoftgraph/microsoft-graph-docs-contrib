---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensitivityLabel = await client.api('/security/dataSecurityAndGovernance/sensitivityLabels/computeInheritance(labelIds=["4e4234dd-377b-42a3-935b-0e42f138fa23"],locale='en-US',contentFormats=["File"])')
	.header('Authorization','Bearer {token}')
	.header('Client-Request-Id','c5e4d3b2-a1f0-e9d8-c7b6-a5e4d3b2a1f0')
	.get();

```