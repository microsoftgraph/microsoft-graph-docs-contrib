
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/app/onlineMeetings/{id}')
	.version('beta')
	.get();

```