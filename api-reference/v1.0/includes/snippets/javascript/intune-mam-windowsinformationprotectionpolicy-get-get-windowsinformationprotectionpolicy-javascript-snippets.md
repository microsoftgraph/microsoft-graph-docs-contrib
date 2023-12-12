---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsInformationProtectionPolicy = await client.api('/deviceAppManagement/windowsInformationProtectionPolicies/{windowsInformationProtectionPolicyId}')
	.get();

```