
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/servicePrincipals/{id}')
	.version('beta')
	.delete();

```