---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let longRunningOperation = await client.api('/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert')
	.version('beta')
	.get();

```