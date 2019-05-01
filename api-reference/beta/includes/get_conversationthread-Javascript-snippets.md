
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/{id}/threads/{id}')
	.version('beta')
	.get();

```