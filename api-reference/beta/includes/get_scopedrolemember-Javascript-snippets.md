
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/administrativeUnits/{id}/scopedRoleMembers')
	.version('beta')
	.get();

```