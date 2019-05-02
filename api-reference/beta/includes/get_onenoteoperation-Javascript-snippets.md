
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/onenote/operations/{id}')
	.version('beta')
	.get();

```