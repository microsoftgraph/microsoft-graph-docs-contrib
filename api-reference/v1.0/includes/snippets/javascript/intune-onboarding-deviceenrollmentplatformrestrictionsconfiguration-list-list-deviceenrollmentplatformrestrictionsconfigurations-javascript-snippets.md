---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceEnrollmentConfigurations = await client.api('/deviceManagement/deviceEnrollmentConfigurations')
	.get();

```