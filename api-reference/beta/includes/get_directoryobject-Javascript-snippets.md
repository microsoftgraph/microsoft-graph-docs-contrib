
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/directoryObjects/{id}')
	.version('beta')
	.get();

```