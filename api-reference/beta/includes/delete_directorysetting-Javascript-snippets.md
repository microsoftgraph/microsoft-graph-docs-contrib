
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/settings/{id}')
	.version('beta')
	.delete();

```