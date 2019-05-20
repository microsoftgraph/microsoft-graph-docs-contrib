
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/contacts/{id}/memberOf')
	.version('beta')
	.get();

```