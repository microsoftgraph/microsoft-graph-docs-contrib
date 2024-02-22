---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationModule = {
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/ba8e4215-4fb2-4dba-abe7-a8f2585177d3/setUpResourcesFolder')
	.version('beta')
	.post(educationModule);

```