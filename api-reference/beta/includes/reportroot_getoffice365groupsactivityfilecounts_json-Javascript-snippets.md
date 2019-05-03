
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/reports/getOffice365GroupsActivityFileCounts(period='D7')')
	.version('beta')
	.get();

```