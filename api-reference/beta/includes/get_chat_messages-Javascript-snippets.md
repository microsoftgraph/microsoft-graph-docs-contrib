
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/chats/{id}/messages')
	.version('beta')
	.get();

```