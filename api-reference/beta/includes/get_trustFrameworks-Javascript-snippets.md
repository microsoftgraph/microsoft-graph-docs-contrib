
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/trustFramework/policies')
	.version('beta')
	.get();

```