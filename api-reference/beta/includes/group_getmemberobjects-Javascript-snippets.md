
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const String = {
  securityEnabledOnly: false
};

let res = await client.api('/groups/{id}/getMemberObjects')
	.version('beta')
	.post(String);

```