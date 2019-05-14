
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/schools/10001')
	.version('beta')
	.get();

```