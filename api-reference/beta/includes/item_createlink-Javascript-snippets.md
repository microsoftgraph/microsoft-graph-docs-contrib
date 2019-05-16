
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  type: "view",
  scope: "anonymous"
};

let res = await client.api('/me/drive/items/{itemId}/createLink')
	.version('beta')
	.post(permission);

```