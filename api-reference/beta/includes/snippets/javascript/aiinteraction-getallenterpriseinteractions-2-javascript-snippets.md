---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllEnterpriseInteractions = await client.api('/copilot/users/4db02e4b-d144-400e-b194-53253a34c5be/interactionHistory/getAllEnterpriseInteractions')
	.version('beta')
	.filter('appClass eq \'IPM.SkypeTeams.Message.Copilot.BizChat\'')
	.get();

```