
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/privilegedRoleAssignments')
	.version('beta')
	.filter('isElevated eq true and expirationDateTime ne null or isElevated eq false')
	.get();

```