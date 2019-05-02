
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/schemaExtensions/{id}')
	.version('beta')
	.delete();

```