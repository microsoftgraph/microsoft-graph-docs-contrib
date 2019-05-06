
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/contacts/{id}/manager')
	.version('beta')
	.get();

```