
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const String = {
  securityEnabledOnly: true
};

let res = await client.api('/directoryObjects/{object-id}/getMemberGroups')
	.post(String);

```