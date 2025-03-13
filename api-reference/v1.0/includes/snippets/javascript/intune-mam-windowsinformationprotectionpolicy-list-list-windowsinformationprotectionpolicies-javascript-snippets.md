---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsInformationProtectionPolicies = await client.api('/deviceAppManagement/windowsInformationProtectionPolicies')
	.get();

```