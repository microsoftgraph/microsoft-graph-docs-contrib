
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/teams/{id}/installedApps')
	.version('beta')
	.expand('teamsAppDefinition')
	.get();

```