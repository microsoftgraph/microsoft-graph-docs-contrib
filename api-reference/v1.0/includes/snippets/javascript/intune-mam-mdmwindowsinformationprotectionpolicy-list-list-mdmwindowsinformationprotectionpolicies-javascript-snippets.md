---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mdmWindowsInformationProtectionPolicies = await client.api('/deviceAppManagement/mdmWindowsInformationProtectionPolicies')
	.get();

```