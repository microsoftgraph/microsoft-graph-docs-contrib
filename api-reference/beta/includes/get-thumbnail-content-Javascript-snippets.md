
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/drive/items/{item-id}/thumbnails/{thumb-id}/{size}/content')
	.version('beta')
	.get();

```