
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/sites')
	.version('beta')
	.filter('siteCollection/root ne null')
	.get();

```