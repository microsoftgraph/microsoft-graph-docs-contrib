
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/directory/deleteditems/microsoft.graph.group')
	.version('beta')
	.get();

```