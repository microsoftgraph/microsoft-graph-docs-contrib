
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/security/secureScores')
	.top(1)
	.get();

```