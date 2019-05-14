
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/schools/10002')
	.version('beta')
	.delete();

```