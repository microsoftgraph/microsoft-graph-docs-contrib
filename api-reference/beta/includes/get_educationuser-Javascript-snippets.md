
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/users/13012')
	.version('beta')
	.get();

```