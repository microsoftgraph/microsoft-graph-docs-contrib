
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/drive/items/{item-id}/content')
	.version('beta')
	.get();

```