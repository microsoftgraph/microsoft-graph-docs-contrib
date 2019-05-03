
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationTemplate = {
    id: "SCIM-Test1",
    applicationId: "{id}",
    factoryTag: "CustomSCIM"
};

let res = await client.api('/applications/{id}/synchronization/templates')
	.version('beta')
	.post({synchronizationTemplate : synchronizationTemplate});

```