---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let community = await client.api('/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')
	.version('beta')
	.get();

```