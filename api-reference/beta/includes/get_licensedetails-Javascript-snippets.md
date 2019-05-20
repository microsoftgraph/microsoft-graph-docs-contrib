
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/licenseDetails')
	.version('beta')
	.get();

```