
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/auditLogs/signIns')
	.version('beta')
	.get();

```