
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/synchronizationProfiles/{id}/start')
	.version('beta')
	.post();

```