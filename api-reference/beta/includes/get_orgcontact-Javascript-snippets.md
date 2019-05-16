
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/contacts/{id}')
	.version('beta')
	.get();

```