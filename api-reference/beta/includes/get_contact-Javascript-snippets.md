
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/contacts/AAMkAGI2THk0AAA=')
	.version('beta')
	.get();

```