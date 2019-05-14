
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users/{id}/chats/{id}')
	.version('beta')
	.get();

```