
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users/delta')
	.version('beta')
	.header('Prefer','return=minimal')
	.select('displayName,jobTitle,mobilePhone')
	.get();

```