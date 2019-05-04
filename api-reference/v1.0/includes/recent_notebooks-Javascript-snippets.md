
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/onenote/notebooks/getRecentNotebooks(includePersonalNotebooks=true)')
	.get();

```