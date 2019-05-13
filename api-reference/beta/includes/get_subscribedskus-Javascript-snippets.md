
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/subscribedSkus')
	.version('beta')
	.get();

```