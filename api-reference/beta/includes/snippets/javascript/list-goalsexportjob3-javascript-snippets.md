---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let exportJobs = await client.api('/employeeexperience/goals/exportJobs')
	.version('beta')
	.filter('explorerViewId eq \'9ab0fcab-c1d4-4b26-963b-a3c33155f853\'')
	.get();

```