
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/security/alerts')
	.version('beta')
	.get();

```