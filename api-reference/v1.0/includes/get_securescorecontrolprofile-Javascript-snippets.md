
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/security/secureScoreControlProfiles/{id}')
	.version('beta')
	.get();

```