
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/reports/getEmailAppUsageAppsUserCounts(period='D7')')
	.get();

```