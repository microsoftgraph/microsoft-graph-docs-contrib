
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/bookingBusinesses/Fabrikam@M365B489948.onmicrosoft.com')
	.version('beta')
	.get();

```