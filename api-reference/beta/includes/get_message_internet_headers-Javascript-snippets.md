
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/messages/AAMkAGVmMDEz/')
	.version('beta')
	.select('internetMessageHeaders')
	.get();

```