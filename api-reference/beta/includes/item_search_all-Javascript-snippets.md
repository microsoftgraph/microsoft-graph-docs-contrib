
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/drive/search(q='{search-query}')')
	.version('beta')
	.get();

```