
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/privilegedRoleAssignments/{id}')
	.version('beta')
	.delete();

```