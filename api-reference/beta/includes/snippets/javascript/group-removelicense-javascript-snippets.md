---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  addLicenses: [],
  removeLicenses: [
    'c7df2760-2c81-4ef7-b578-5b5392b571df',
    'b05e124f-c7cc-45a0-a6aa-8cf78c946968'
  ]
};

await client.api('/groups/1132b215-826f-42a9-8cfe-1643d19d17fd/assignLicense')
	.version('beta')
	.post(group);

```