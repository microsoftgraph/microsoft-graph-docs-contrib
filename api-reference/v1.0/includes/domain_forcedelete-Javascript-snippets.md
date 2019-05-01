
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forceDelete = {
  disableUserAccounts: true
};

let res = await client.api('/domains/{id}/forceDelete')
	.version('beta')
	.post(forceDelete);

```