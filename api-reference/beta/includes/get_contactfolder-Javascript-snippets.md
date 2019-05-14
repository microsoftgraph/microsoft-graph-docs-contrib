
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/contactFolders/{id}')
	.version('beta')
	.get();

```