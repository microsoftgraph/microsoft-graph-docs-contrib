---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appRoleAssignment = {
    principalId: '59bb3898-0621-4414-ac61-74f9d7201355',
    principalType: 'User',
    appRoleId: '3a84e31e-bffa-470f-b9e6-754a61e4dc63',
    resourceId: 'd3616293-fff8-4415-9f01-33b05dad1b46'
};

await client.api('/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46/appRoleAssignments')
	.post(appRoleAssignment);

```