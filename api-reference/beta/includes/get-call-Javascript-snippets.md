
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/app/calls/{id}')
	.version('beta')
	.get();

```