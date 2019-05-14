
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/users/delta')
	.select('displayName,jobTitle,mobilePhone')
	.get();

```