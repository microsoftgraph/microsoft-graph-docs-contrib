
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/security/secureScores')
	.version('beta')
	.top(1)
	.get();

```