
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/me/schools')
	.version('beta')
	.get();

```