
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/{id}/conversations')
	.version('beta')
	.get();

```