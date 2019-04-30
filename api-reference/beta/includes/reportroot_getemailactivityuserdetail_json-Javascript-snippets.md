
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/reports/getEmailActivityUserDetail(period='D7')')
	.version('beta')
	.get();

```