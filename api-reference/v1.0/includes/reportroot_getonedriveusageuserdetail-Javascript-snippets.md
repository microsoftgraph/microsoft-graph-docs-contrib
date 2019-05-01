
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/reports/getOneDriveUsageAccountDetail(period='D7')')
	.get();

```