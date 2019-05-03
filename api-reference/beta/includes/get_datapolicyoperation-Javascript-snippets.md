
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/dataPolicyOperations/{id}')
	.version('beta')
	.get();

```