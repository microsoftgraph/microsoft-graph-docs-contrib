
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/oAuth2Permissiongrants/{id}')
	.version('beta')
	.delete();

```