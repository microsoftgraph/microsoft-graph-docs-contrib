
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/privilegedRoleAssignments/{id}/makeEligible')
	.version('beta')
	.post();

```